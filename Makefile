# Makefile для текущей структуры проекта

# Переменные
APP_DIR = app
INFRASTRUCTURE_DIR = .
CONFIG_DIR = $(INFRASTRUCTURE_DIR)/config
DOCKER_COMPOSE_FILE = $(INFRASTRUCTURE_DIR)/docker-compose.yml
DOCKER_COMPOSE_DEV_FILE = $(INFRASTRUCTURE_DIR)/docker-compose.dev.yml
DOCKER_COMPOSE_PROD_FILE = $(INFRASTRUCTURE_DIR)/docker-compose.prod.yml

# Цель по умолчанию
default: help

# Цель для вывода справки
help:
	@echo "Доступные цели:"
	@echo "  build    - собрать проект"
	@echo "  up       - запустить проект"
	@echo "  down     - остановить проект"
	@echo "  clean    - очистить проект"

# Цель для сборки проекта
build:
	@echo "Собираем проект..."
	@docker-compose -f $(DOCKER_COMPOSE_FILE) build

# Цель для запуска проекта
up:
	@echo "Запускаем проект..."
	@docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

# Цель для остановки проекта
down:
	@echo "Останавливаем проект..."
	@docker-compose -f $(DOCKER_COMPOSE_FILE) down

# Цель для очистки проекта
clean:
	@echo "Очищаем проект..."
	@docker-compose -f $(DOCKER_COMPOSE_FILE) down --volumes --remove-orphans
	@rm -rf $(CONFIG_DIR)/*.ini