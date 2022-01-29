CWD := $(shell pwd)

.PHONY: build
build:
	docker build -t my_linux_20_04:latest .

.PHONY: up
up:
	docker run --name motoyuki_linux_20_04 --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" -v $(CWD)/workdir:/root -it my_linux_20_04 bash

.PHONY: down
down:
	docker stop motoyuki_linux_20_04 && docker rm -f motoyuki_linux_20_04 
