CONTAINER	= cloudcom/java

default: build

build:
	cd jdk7/32bit && docker build --tag $(CONTAINER):jdk7-32bit .
	cd jdk7/64bit && docker build --tag $(CONTAINER):jdk7-64bit .
	cd jdk8/32bit && docker build --tag $(CONTAINER):jdk8-32bit .
	cd jdk8/64bit && docker build --tag $(CONTAINER):jdk8-64bit .

push:
	docker push $(CONTAINER)

.PHONY:	default build
