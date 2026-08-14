{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./hardware-configuration.nix
    ./modules/core/boot.nix
    ./modules/core/nix.nix
    ./modules/core/locale.nix
    ./modules/core/networking.nix
    ./modules/hardware/laptop.nix
    ./modules/hardware/power-management.nix
    ./modules/desktop/audio.nix
    ./modules/desktop/services.nix
    ./modules/desktop/gnome.nix
    ./modules/virtualisation/docker.nix
    #./modules/virtualisation/virtualbox.nix
    ./modules/users/users.nix
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.borjag = {
      imports = [
        inputs.nix-index-database.homeModules.nix-index
        ../../home-manager/borjag/home.nix
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}