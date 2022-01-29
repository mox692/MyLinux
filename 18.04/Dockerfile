
#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:18.04

RUN dpkg --add-architecture i386
RUN apt -y update && apt -y full-upgrade && \
    apt -y install ca-certificates && \
    apt -y install --no-install-recommends libc6:i386 libncurses5:i386 libstdc++6:i386 multiarch-support \
    build-essential gdb file strace ltrace socat radare2 \
    python3 python3-pip python3-dev libssl-dev libffi-dev \
    zsh vim git curl python wget less sudo tmux netcat telnet && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# rp++
RUN wget https://github.com/0vercl0k/rp/releases/download/v1/rp-lin-x64 && \
    wget https://github.com/0vercl0k/rp/releases/download/v1/rp-lin-x86 && \
    chmod +x rp-lin-x64 rp-lin-x86 && \
    mv rp-lin-x64 rp-lin-x86 /bin

# checksec
RUN git clone https://github.com/slimm609/checksec.sh.git && \
    mv checksec.sh/checksec /bin/ && \
    chmod +x /bin/checksec && \
    rm -rf checksec.sh

# Add unprivileged user
RUN useradd appuser -d /home/appuser
WORKDIR /home/appuser

# peda + Pwngdb
RUN git clone https://github.com/longld/peda.git /root/peda && \
    git clone https://github.com/scwuaptx/Pwngdb.git /root/Pwngdb && \
    cp /root/Pwngdb/.gdbinit /root/


# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

VOLUME [ "./volume" ] 

# Define default command.
CMD ["bash"]
