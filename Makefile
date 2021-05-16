CWD := $(shell pwd)

.PHONY: build
build:
	docker build -t my_linux:latest

.PHONY: up
up:
	docker run -v $(CWD)/workdir:/root -it my_linux bash