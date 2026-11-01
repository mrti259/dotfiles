.PHONY: help

include mk/nixos.mk
include mk/nix.mk
include mk/docker.mk
include mk/bootstrap.mk

help: ## Muestra esta ayuda
	@grep -h -E '^[a-zA-Z_%-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
