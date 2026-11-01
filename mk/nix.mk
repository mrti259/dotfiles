.PHONY: clean update check

clean: ## Limpia garbage de nix y generaciones viejas
	nix-collect-garbage -d
	sudo nix-collect-garbage -d
	sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations old

update: ## Actualiza flake.lock
	nix flake update

check: ## Chequea el flake
	nix flake check
