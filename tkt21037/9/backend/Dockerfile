FROM golang:1.16.15

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5678

RUN go build

CMD ["./server", "${REQUEST_ORIGIN}"]
