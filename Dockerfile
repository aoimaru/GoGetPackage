FROM golang:1.12.6
LABEL maintainer "NAKAMURA AOI"
WORKDIR /go/src

ENV GO111MODULE=on

ENV GOOS=darwin
ENV GOARCH=amd64

RUN go mod download
