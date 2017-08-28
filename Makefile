

build:
	docker build -t consul_client ./client

start: build
	./scripts/start.sh

clean:
	./scripts/clean.sh
