FROM golang:1.16 as build-stage
WORKDIR /app
EXPOSE 8080

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o server

FROM scratch
COPY --from=build-stage /app/server /app/
ENV REQUEST_ORIGIN=http://localhost:5432
CMD ["./app/server", "${REQUEST_ORIGIN}"]
