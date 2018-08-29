FROM golang:alpine
RUN apk add git && \
    git clone ne https://github.com/betheroot/pghoney.git && \
    cd pghoney && \
    go get ./...
WORKDIR /go/pghoney
CMD go run *.go
