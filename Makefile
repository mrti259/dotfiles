.PHONY: nixos nixos-rollback clean update check

nixos:
	sudo nixos-rebuild switch --flake .

nixos-%:
	sudo nixos-rebuild switch --flake .#$*

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