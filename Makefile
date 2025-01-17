run:
	go run main.go

build:
	go build -o out/main main.go

cover:
	go test -covermode=count -coverprofile=count.out
	go tool cover -func=count.out
	rm count.out

test:
	go test -v
