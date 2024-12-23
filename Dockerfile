FROM golang:1.21.5-alpine
WORKDIR /app
COPY webapi/ /app/
RUN go mod tidy && go build -o app .
CMD ["./app"]