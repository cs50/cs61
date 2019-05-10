default: run

.PHONY: build
build:
	docker build -t cs61/f18 .

.PHONY: rebuild
rebuild:
	docker build --no-cache -t cs61/f18 .

.PHONY: run
run:
	docker run -it -P --rm -v "$(PWD)":/mnt cs61/f18 bash -l
