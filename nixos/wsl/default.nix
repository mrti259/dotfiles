{ inputs, ... }:

{
  imports = [
    inputs.nixos-wsl.nixosModules.default
    ../common/borja.nix
    ../common/docker.nix
    ../common/home-manager.nix
    ../common/nix.nix
    ../common/nixpkgs.nix
  ];

  wsl = {
    enable = true;
    defaultUser = "borja";
  };

  networking.hostName = "nixos-wsl";

  nixpkgs.hostPlatform = "x86_64-linux";

  system.stateVersion = "26.05";
}
