{ ... }:

{
  imports = [
    ./hardware
    ./system
    ./services

    ../common/borja.nix
    ../common/docker.nix
    ../common/home-manager.nix
    ../common/nix.nix
    ../common/nixpkgs.nix
  ];

  networking.hostName = "nixos-dell";

  system.stateVersion = "25.05";
}
