.PHONY: up down restart status logs

up:
	@echo "🔼 Subindo containers..."
	docker compose up -d

down:
	@echo "🔽 Derrubando containers..."
	docker compose down

restart:
	@echo "♻️  Reiniciando containers..."
	docker compose down
	docker compose up -d

status:
	@docker compose ps

logs:
	docker compose logs -f --tail=100
