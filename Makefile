COMPOSE=docker-compose -f docker-compose.yml

all: build

build:
	$(COMPOSE) build

generate:
	$(COMPOSE) run generate

generate-cpu:
	$(COMPOSE) run -e DEVICE='cpu' generate

train:
	$(COMPOSE) run train

train-cpu:
	$(COMPOSE) run -e DEVICE='cpu' train


.PHONY: all build generate generate-cpu train train-cpu
