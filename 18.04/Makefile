CWD := $(shell pwd)

.PHONY: build
build:
	docker build -t my_linux:latest .

.PHONY: up
up:
	docker run --name motoyuki_linux --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" -v $(CWD)/workdir:/root -it my_linux bash

.PHONY: down
down:
	docker stop motoyuki_linux && docker rm -f motoyuki_linux
