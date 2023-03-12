.PHONY: test build

test:
	go test -race -covermode=atomic ./...

run:
	go run .

localbox-build:
	GOARCH=amd64 GOOS=linux go build -o build/lec .

localbox-test-copy:
	cp -r build/lec ~/local-encoder-controller/lec

localbox-upload:
	scp build/lec root@172.31.6.139:~/local-encoder-controller/lec