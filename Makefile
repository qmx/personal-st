EXTRA_VERSION = "-qmx-$(shell git describe --always)"

docker-build:
	@docker build -t st-builder .
	@docker run --rm -v "$(shell pwd)/st:/work" -w /work -u "$(shell id -u)" st-builder make clean all EXTRA_VERSION="${EXTRA_VERSION}"
