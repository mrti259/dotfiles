.PHONY: flatpak-setup

flatpak-setup: ## Configura flathub
	flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
