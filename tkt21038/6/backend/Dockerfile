
FROM golang:1.16.15

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5432

RUN go build && adduser appuser && rm -rf /var/cache/apk/*

USER appuser

CMD ["./server", "${REQUEST_ORIGIN}"]
