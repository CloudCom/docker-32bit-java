CONTAINER	= screencast/32bit-java

default: build

build:
	docker build --tag $(CONTAINER) .

push:
	docker push $(CONTAINER)

.PHONY:	default build