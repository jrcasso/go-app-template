run:
	go run example/main.go

build:
	go build -o bin/main example/main.go

cover:
	go test -covermode=count -coverprofile=count.out
	go tool cover -func=count.out
	rm count.out

test:
	go test -v
