all: clean format golint build test

PROMU_VERSION  := 0.5.0

include Makefile.common

TARGET ?= das-logstash-exporter

vendor:
	@echo ">> installing dependencies on vendor"
	GO111MODULE=$(GO111MODULE) $(GO) mod vendor
	
test:
	@echo ">> running tests"
	GO111MODULE=$(GO111MODULE) $(GO) test -short $(pkgs)

format:
	@echo ">> formatting code"
	GO111MODULE=$(GO111MODULE) $(GO) fmt $(pkgs)

golint: common-lint
	@echo ">> linting code"
	GO111MODULE=$(GO111MODULE) $(GOLANGCI_LINT) run

build: promu vendor
	@echo ">> building binaries"
	GO111MODULE=$(GO111MODULE) $(PROMU) build --prefix $(PREFIX)

clean:
	@echo ">> Cleaning up"
	@find . -type f -name '*~' -exec rm -fv {} \;
	@rm -fv $(TARGET)

.PHONY: all clean format golint build test

