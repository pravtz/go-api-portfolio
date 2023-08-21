.PHONY: default run build test docs clean

#variables
APP_NAME=go_api_portfolio

#Tasks
default: run-with-docs

run:
	@go run main.go
run-with-docs:
	@swag init
	@go run main.go
build:
	@go build -o $(APP_NAME) main.go
test:
	@go test ./ ...
docs:
	@swag init
clear:
	@rm -f $(APP_NAME)
	@rm -rf ./docs

