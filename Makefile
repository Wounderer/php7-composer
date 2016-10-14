VENDOR="eviweb"
IMAGE=`basename $(realpath .)`
TAG=$(shell echo $(VENDOR)/$(IMAGE):latest)
COMPOSER_VERSION=`cat $(realpath composer-version)`

all:
	make clean
	make build
	make test

build:
	@docker build -t $(TAG) .
	$(CURDIR)/bin/listpkg $(TAG)
	$(CURDIR)/bin/composer-version $(TAG)
	@docker tag $(TAG) $(shell echo $(VENDOR)/$(IMAGE):$(COMPOSER_VERSION))
	
clean:
	$(CURDIR)/bin/delimg $(TAG)
	$(CURDIR)/bin/delimg $(shell echo $(VENDOR)/$(IMAGE):$(COMPOSER_VERSION))

test:	
	./tests/composer-version

.PHONY: build
