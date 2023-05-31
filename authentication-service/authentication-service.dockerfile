# # base go image
# # golang version 1.20
# FROM golang:1.20-alpine as builder
# RUN mkdir /app
# COPY . /app
# WORKDIR /app
# RUN CGO_ENABLE=0 go build -o authApp ./cmd/api
# RUN chmod +x /app/authApp

FROM alpine:latest

RUN mkdir /app

COPY authApp /app

CMD [ "app/authApp" ]