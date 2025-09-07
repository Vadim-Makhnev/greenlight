build:
	go build -v -o bin/greenlight ./cmd/api

.PHONY: build


run:
	./bin/greenlight

.PHONY: run

.DEFAULT_GOAL := build