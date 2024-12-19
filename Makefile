HAS_DOCKER_COMPOSE_WITH_DASH := $(shell which docker-compose)
ifdef HAS_DOCKER_COMPOSE_WITH_DASH
    DOCKER_COMPOSE=docker-compose
else
    DOCKER_COMPOSE=docker compose
endif

infra_up:
	$(DOCKER_COMPOSE) -f docker-compose.infra.yml up -d
infra_down:
	$(DOCKER_COMPOSE) -f docker-compose.infra.yml down
mongo_repl:
	$(DOCKER_COMPOSE) -f docker-compose.infra.yml exec mongodb_1 /scripts/rs_init_auth.sh
up:
	$(DOCKER_COMPOSE) -f docker-compose.yml up -d
down:
	$(DOCKER_COMPOSE) -f docker-compose.yml down
