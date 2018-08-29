FROM golang:alpine
RUN apk add git && \
    git clone https://github.com/betheroot/pghoney.git /pghoney/src/pghoney && \
    export GOPATH=/pghoney && \
    cd /pghoney/ && \
    go get ./... && \
    cd /pghoney/src/pghoney && \
    cp pghoney.conf.sample pghoney.conf
CMD cd /pghoney/src/pghoney && go run *.go
