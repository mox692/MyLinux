PWD := $(shell pwd)

b:;
	docker build -t docker-mysql-8 -f Dockerfile8-0 .

r:;
	docker run --name docker-mysql-8 -d -v $(PWD)/db-8:/var/lib/mysql -v $(PWD)/workdir:/root -p 3306:3306 docker-mysql-8

down:;
	docker stop docker-mysql-8 && docker rm -f docker-mysql-8