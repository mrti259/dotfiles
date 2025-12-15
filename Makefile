.PHONY: home nixos clean update init

home:
	home-manager switch --flake .

nixos:
	sudo nixos-rebuild switch

clean:
	nix-collect-garbage -d
	sudo nix-collect-garbage -d
	sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations old	

update:
	nix flake update

init:
	sudo ln -sr ./nixos/configuration.nix /etc/nixos
