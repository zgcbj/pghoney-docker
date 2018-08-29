FROM golang:alpine
RUN apk add git && \
    git clone https://github.com/betheroot/pghoney.git && \
    export GOPATH=/go
    go get ./pghoney/...
CMD go run ./pghoney/*.go
