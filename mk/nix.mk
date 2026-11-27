.PHONY: clean update check

optimise: ## Deduplica el Nix store con hard links
	sudo nix store optimise

clean: ## Limpia garbage de nix y generaciones viejas
	nix-collect-garbage -d
	sudo nix-collect-garbage -d
	sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations old

update: ## Actualiza flake.lock
	nix flake update

check: ## Chequea el flake
	nix flake check
