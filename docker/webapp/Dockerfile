FROM golang:1.14 as builder

RUN mkdir -p /go/src/github.com/hsmtkk/chitchat

WORKDIR /go/src/github.com/hsmtkk/chitchat

COPY . .

ENV CGO_ENABLED=0

RUN go build -o chitchat && cp ./chitchat /chitchat

FROM alpine:3.9.6

COPY --from=builder /chitchat /var/run/chitchat

COPY ./config.json /var/run/config.json
COPY ./public /var/run/public
COPY ./templates /var/run/templates
COPY ./docker/webapp/entrypoint.sh /var/run/entrypoint.sh

EXPOSE 8080

WORKDIR /var/run

ENTRYPOINT ["./entrypoint.sh"]

