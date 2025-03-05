FROM golang:1.21.4 AS builder
WORKDIR /app
COPY go.mod ./
RUN go mod tidy
COPY main.go .
RUN go build -o hello-api
# FROM gcr.io/distroless/base-debian12
FROM busybox:1.37.0
WORKDIR /app
COPY --from=builder /app/hello-api /app/
EXPOSE 8080
CMD ["/app/hello-api"]
