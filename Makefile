CI_NAME = "vish/stress"

all: build

build:
	@GOBIN=`pwd` CGO_ENABLED=0 go install --ldflags '-extldflags "-static"'

docker-build-amd64:
	@docker build -t $(CI_NAME):manifest-amd64 .

docker-build-arm64:
	@docker build --build-arg GO_ARCH=arm64 -t $(CI_NAME):manifest-arm64 .

docker-images:
	$(MAKE) docker-build-amd64
	$(MAKE) docker-build-arm64

.PHONY: docker-build-amd64 docker-build-arm64 docker-images build all
