NIX_CONFIG_PATH := etc/nixos/configuration.nix

copy:
	cp /$(NIX_CONFIG_PATH) $(NIX_CONFIG_PATH)
