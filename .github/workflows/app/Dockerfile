FROM golang:1.20-alpine AS builder
WORKDIR /src
COPY go.mod .
COPY main.go .
RUN go build -o /hello-app main.go

FROM alpine:3.18
COPY --from=builder /hello-app /hello-app
EXPOSE 8080
ENTRYPOINT ["/hello-app"]
