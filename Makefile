.PHONY: home nixos clean update init

home:
	home-manager switch --flake .

home-rollback:
	home-manager switch --rollback --flake .

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
