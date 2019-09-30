APPNAME := example-go-build-time-variables
PACKAGE := github.com/pieterclaerhout/example-go-build-time-variables/version

REVISION := $(shell git rev-parse --short HEAD)
BRANCH := $(shell git rev-parse --abbrev-ref HEAD | tr -d '\040\011\012\015\n')

build:
	go build -ldflags "-X $(PACKAGE).GitRevision=$(REVISION) -X $(PACKAGE).GitBranch=$(BRANCH)" -o $(APPNAME)
	
run: build
	./$(APPNAME) server --port=:8081
