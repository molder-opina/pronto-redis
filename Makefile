.PHONY: help up down logs restart status

help:
	@echo "Pronto Redis - Comandos disponibles:"
	@echo "  up       - Iniciar Redis"
	@echo "  down     - Detener Redis"
	@echo "  logs     - Ver logs"
	@echo "  restart  - Reiniciar Redis"
	@echo "  status   - Ver estado"

up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f

restart:
	docker-compose restart

status:
	docker-compose ps
