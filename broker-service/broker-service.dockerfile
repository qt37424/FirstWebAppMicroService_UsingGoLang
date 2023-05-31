# # base go image
# # golang version 1.20
# FROM golang:1.20-alpine as builder 

# # I think we can understand this command create a new folder (virtual folder?) support for building and storing image of this service
# RUN mkdir /app

# # Copy all the thing we had in this project to app folder
# COPY . /app

# # maybe here is the command for changing the place to work like workspace
# WORKDIR /app

# # build the api server into brokerApp image with option CGO_ENABLE equals to 0
# RUN CGO_ENABLE=0 go build -o brokerApp ./cmd/api

# # run brokerApp image using docker
# RUN chmod +x /app/brokerApp

# The code above is unnecessary when you have Makefile

# build a tiny docker image
FROM alpine:latest

RUN mkdir /app

# COPY --from=builder /app/brokerApp /app # This is no need when having Makefile

COPY brokerApp /app

# create a much smaller Docker image and just copy over the executable.
CMD [ "app/brokerApp" ]