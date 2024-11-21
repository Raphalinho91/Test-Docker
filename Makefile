# Nom de l'environnement Docker Compose
DOCKER_COMPOSE = docker-compose

# Démarrer les conteneurs et reconstruire les images si nécessaire
up:
	@$(DOCKER_COMPOSE) up --build

# Arrêter les conteneurs
down:
	@$(DOCKER_COMPOSE) down

# Arrêter et supprimer les conteneurs et les volumes associés
down-all:
	@$(DOCKER_COMPOSE) down -v

# Voir les logs des services en cours d'exécution
logs:
	@$(DOCKER_COMPOSE) logs -f

# Exécuter un shell dans le conteneur backend
bash-backend:
	@docker exec -it $(docker-compose ps -q backend) /bin/sh

# Exécuter un shell dans le conteneur frontend
bash-frontend:
	@docker exec -it $(docker-compose ps -q frontend) /bin/sh
