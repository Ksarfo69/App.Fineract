docker cp ${PWD}/01-init.sh fineract-db:docker-entrypoint-initdb.d/01-init.sh
docker exec -it fineract-db bash -c "/docker-entrypoint-initdb.d/01-init.sh"