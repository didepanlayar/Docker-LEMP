include .env

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  docker-up           Start and create all services"
	@echo "  docker-down         Stop and remove all services"
	@echo "  docker-start        Start all services"
	@echo "  docker-stop         Stop all services"
	@echo "  docker-login        Login to container"
	@echo "  logs                Follow log output"

docker-up:
	@docker-compose up -d

docker-down:
	@docker-compose down -v

docker-start:
	@docker-compose start

docker-stop:
	@docker-compose stop

docker-login:
	@docker exec -it $(APP_CODE_NAME)-php-fpm /bin/bash

logs:
	@docker-compose logs -f