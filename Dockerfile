FROM golang:1.11.3
WORKDIR /go/src/github.com/bskiba/wit-camp-2019/
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build .

FROM scratch
COPY --from=0 /go/src/github.com/bskiba/wit-camp-2019/wit-camp-2019 .
ENTRYPOINT ["/wit-camp-2019"]
