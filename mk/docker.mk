.PHONY: docker-clean docker-clean-all

docker-clean: ## Limpia contenedores, imagenes sin uso, redes y cache
	docker system prune -af

docker-clean-all: ## Limpieza agresiva: incluye volumenes no usados
	docker system prune -af --volumes
	docker volume prune -f
