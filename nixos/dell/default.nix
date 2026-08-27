{ ... }:

{
  imports = [
    ./hardware
    ./system
    ./services

    ../common/nix.nix
    ../common/nixpkgs.nix
    ../common/home-manager.nix
  ];

  networking.hostName = "nixos-dell";

  system.stateVersion = "25.05";
}
