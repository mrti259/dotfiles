{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ../common/nix.nix
    ../common/nixpkgs.nix
    ./hardware-configuration.nix
    ./modules/core/boot.nix
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
    users.borja = {
      imports = [
        inputs.nix-index-database.homeModules.nix-index
        ../../home-manager/borja
      ];
    };
  };

  nix = {
    settings = {
      trusted-users = [ "root" "borja" ];
    };
  };

  system.stateVersion = "25.05";
}
