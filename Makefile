# VARIABLES
BOLD := \033[1m
RESET := \033[0m

# -- Docker
COMPOSE              = docker-compose

# ==============================================================================
# RULES

default: help

run: ## Run the docker-compose stack
	@$(COMPOSE) up -d
.PHONY: run

stop: ## Stop the docker-compose stack
	@$(COMPOSE) stop
.PHONY: stop

down: ## Destroy the docker-compose stack
	@$(COMPOSE) down
.PHONY: down

logs: ## Show prosody logs
	@$(COMPOSE) logs -f prosody
.PHONY: logs

help:  ## Show this help
	@echo "$(BOLD)Marsha Makefile$(RESET)"
	@echo "Please use 'make $(BOLD)target$(RESET)' where $(BOLD)target$(RESET) is one of:"
	@grep -h ':\s\+##' Makefile | column -tn -s# | awk -F ":" '{ print "  $(BOLD)" $$1 "$(RESET)" $$2 }'
.PHONY: help
