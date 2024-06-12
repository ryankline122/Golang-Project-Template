# Makefile for Go project

# Variables
GO := go
BINARY_NAME := program
BUILD_DIR := build

.PHONY: all build clean run test

all: build

build: $(BUILD_DIR)/$(BINARY_NAME)

$(BUILD_DIR)/$(BINARY_NAME): cmd/$(BINARY_NAME)/main.go
	$(GO) build -o $(BUILD_DIR)/$(BINARY_NAME) ./cmd/$(BINARY_NAME)

clean:
	rm -f $(BUILD_DIR)/$(BINARY_NAME)

run: build
	$(BUILD_DIR)/$(BINARY_NAME)

test:
	$(GO) test ./...
