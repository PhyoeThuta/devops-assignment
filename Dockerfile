FROM golang:1.21.4-bookworm AS builder

WORKDIR /src

COPY go.mod ./
COPY main.go ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
    go build -trimpath -ldflags="-s -w" -o /out/hello-api ./main.go

FROM gcr.io/distroless/static-debian12:nonroot

WORKDIR /

COPY --from=builder /out/hello-api /hello-api

EXPOSE 8080

USER nonroot:nonroot

ENTRYPOINT ["/hello-api"]