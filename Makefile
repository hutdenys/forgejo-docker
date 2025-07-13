up:
	docker-compose up -d

down:
	docker-compose down

build: 
	docker-compose build

restart: 
	docker-compose down
	docker-compose up -d

rebuild:
	docker-compose down
	docker-compose build
	docker-compose up -d

.PHONY: up down build restart rebuild