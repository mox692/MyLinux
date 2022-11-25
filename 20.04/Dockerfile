
#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:latest

RUN apt -y update && apt -y full-upgrade && \
    apt -y install ca-certificates && \
    apt -y install --no-install-recommends \
    build-essential file strace ltrace socat \
    python3 python3-pip python3-dev libssl-dev libffi-dev \
    zsh vim git curl wget less sudo netcat telnet && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*


# Add unprivileged user
RUN useradd appuser -d /home/appuser
WORKDIR /home/appuser


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
