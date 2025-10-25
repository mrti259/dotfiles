.PHONY: update rebuild clean init

update:
	home-manager switch

rebuild:
	nixos-rebuild switch

clean:
	nix-collect-garbage -d
	nix-env --profile /nix/var/nix/profiles/system --delete-generations old	

init:
	ln -sr ./nixos/configuration.nix /etc/nixos
