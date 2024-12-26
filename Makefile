.PHONY: up
up:
	protoc -I proto proto/*.proto --go_out=. --go_opt=paths=import --go-grpc_out=. --go-grpc_opt=paths=import
	#protoc -I proto proto/*.proto --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative

.DEFAULT_GOAL := up