FROM golang:1.8-alpine
ADD . /go/src/hello-actm
RUN go install hello-actm

FROM alpine:latest
COPY --from=0 /go/bin/hello-actm .
ENV PORT 8080
CMD ["./hello-actm"]
