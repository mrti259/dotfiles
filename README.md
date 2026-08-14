# Dotfiles

Base de configuración de NixOS (flake) + Home Manager.

## Uso

Los nombres de configuración del flake (`nixosConfigurations.nixos-dell` y
`nixosConfigurations.nixos-wsl`) coinciden con el hostname de cada máquina, por
lo que `make nixos` resuelve la configuración correcta automáticamente.

```sh
make nixos                # rebuild del hostname actual
make nixos-dell           # rebuild específico para Dell
make nixos-wsl            # rebuild específico para WSL
make nixos-rollback       # retrocede al generación anterior
make check                # nix flake check
```

Referencias:
- https://github.com/Evertras/simple-homemanager
- https://github.com/Misterio77/nix-starter-configs
- https://github.com/Misterio77/Foundry
- https://github.com/EmergentMind/nix-config
- https://github.com/nmasur/dotfiles
