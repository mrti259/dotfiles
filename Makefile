.PHONY: update rebuild clean init

update:
	home-manager switch

rebuild:
	sudo nixos-rebuild switch

clean:
	nix-collect-garbage -d
	sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations old	

init:
	sudo ln -sr ./nixos/configuration.nix /etc/nixos
