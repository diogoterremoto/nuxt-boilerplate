#!/usr/bin/make -f

# Start application in development mode
dev:
	docker-compose \
		up \
		--build

# Start application in production mode
prod:
	docker-compose \
		--file docker-compose.prod.yaml \
		up \
			--build

# Stop running containers and clean all images
clean:
	docker-compose \
		down \
			--rmi local \
			--volumes \
			--remove-orphans

# Build image
build:
	docker-compose \
		build \
			--no-cache

# Enter inside running container
enter:
	docker-compose exec site bash

# Install dependencies needed to start application
install-deps:
	sh ./install-docker.sh

