FROM golang:1.15.2-alpine3.12 as builder

ENV CGO_ENABLED=0

WORKDIR /app

COPY go.mod .

RUN go mod download

COPY . .

RUN go build -o main .

FROM scratch

WORKDIR /app

COPY --from=builder /app/main .

USER 1000

CMD ["/app/main"]

