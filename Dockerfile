FROM golang:alpine
RUN apk add git && \
    git clone https://github.com/betheroot/pghoney.git /pghoney/src/pghoney 
RUN export GOPATH=/pghoney && \
    cd /pghoney/ && \
    go get ./... && \
RUN cp /pghoney/src/pghoney/pghoney.conf.sample /pghoney/src/pghoney/pghoney.conf 
CMD cd /pghoney/src/pghoney && go run *.go
