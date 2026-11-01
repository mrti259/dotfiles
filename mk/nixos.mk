.PHONY: nixos nixos-rollback list-generations

nixos: ## Rebuild y activa la config default del flake
	sudo nixos-rebuild switch --flake .

nixos-%: ## Rebuild y activa un host concreto (ej: nixos-laptop -> .#nixos-laptop)
	sudo nixos-rebuild switch --flake .#nixos-$*

nixos-rollback: ## Rollback de la config default
	sudo nixos-rebuild switch --rollback --flake .

nixos-rollback-%: ## Rollback de un host concreto
	sudo nixos-rebuild switch --rollback --flake .#nixos-$*

list-generations: ## Lista generaciones del sistema
	nixos-rebuild list-generations
