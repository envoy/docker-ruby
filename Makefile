all: build

build:
	docker build -t warmwaffles/ruby:2.4.1 .
	docker tag warmwaffles/ruby:2.4.1 warmwaffles/ruby:latest

push: build
	docker push warmwaffles/ruby:2.4.1
	docker push warmwaffles/ruby:latest

.PHONY: build push
