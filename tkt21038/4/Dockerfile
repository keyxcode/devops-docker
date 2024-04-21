FROM docker

COPY builder.sh .
RUN apk update
RUN apk add bash
ENTRYPOINT ["./builder.sh"]
