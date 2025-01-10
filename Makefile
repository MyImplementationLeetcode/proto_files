PROTOC=protoc
PROTO_FILES_DIR=proto/problem.proto
GEN_FILES_DIR=./gen/

generate:
	$(PROTOC) -I proto $(PROTO_FILES_DIR) --go_out=$(GEN_FILES_DIR)  --go_opt=paths=source_relative --go-grpc_out=$(GEN_FILES_DIR) --go-grpc_opt=paths=source_relative