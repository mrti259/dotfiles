{ ... }:

{
  imports = [
    ./hardware

    ../common/nix.nix
    ../common/nixpkgs.nix
    ../common/home-manager.nix

    ./core.nix
    ./users.nix
    ./desktop.nix

    ./virtualisation/docker.nix
    #./virtualisation/virtualbox.nix
  ];

  networking.hostName = "nixos-dell";

  system.stateVersion = "25.05";
}
