.PHONY: home home-rollback nixos nixos-rollback clean update check

home:
	nix run .#homeConfigurations.borjag.activationPackage

home-rollback:
	nix profile rollback --profile ~/.local/state/nix/profiles/home-manager

nixos:
	sudo nixos-rebuild switch --flake .

nixos-rollback:
	sudo nixos-rebuild switch --rollback --flake .

clean:
	nix-collect-garbage -d
	sudo nix-collect-garbage -d
	sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations old	

update:
	nix flake update

check:
	nix flake check