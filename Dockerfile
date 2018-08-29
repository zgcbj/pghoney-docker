FROM golang:alpine
RUN apk add git && \
    git clone https://github.com/betheroot/pghoney.git && \
    cd pghoney && \
    go get ./...
CMD go run pghoney/*.go
