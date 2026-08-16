{ inputs, ... }:

{
  imports = [
    inputs.nixos-wsl.nixosModules.default
    ../common/home-manager.nix
    ../common/nix.nix
    ../common/nixpkgs.nix
  ];

  home-manager.users.nixos.imports = [
    ../../home-manager/nixos
  ];

  wsl = {
    enable = true;
    defaultUser = "nixos";
  };

  networking.hostName = "nixos-wsl";

  nixpkgs.hostPlatform = "x86_64-linux";

  system.stateVersion = "26.05";
}
