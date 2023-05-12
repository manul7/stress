# Container to build stress
FROM golang:latest AS builder
# It is possible to override the architecture with --build-arg
ARG GO_ARCH=amd64
WORKDIR /
COPY main.go go.mod /.
RUN GOBIN=/ go get
RUN GOBIN=/ CGO_ENABLED=0 GOARCH=$GO_ARCH go build --ldflags '-extldflags "-static"' -o stress
# Target container
FROM scratch
LABEL maintainer="vishnuk@google.com"
COPY --from=builder  /stress /
ENTRYPOINT ["/stress", "-logtostderr"]