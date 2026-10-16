{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nix-index-database.homeModules.nix-index
    inputs.zen-browser.homeModules.beta
    ../common

    ./gnome-shell.nix
    ./vscodium.nix
  ];

  home = {
    stateVersion = "24.11";
    packages = with pkgs; [
      ## office
      maestral
      obsidian
      xournalpp
      # krita
      # libreoffice
      # obs-studio

      ## comunication
      telegram-desktop
    ];
  };

  programs = {
    nix-index-database.comma.enable = true;
    zen-browser = {
      enable = true;
      setAsDefaultBrowser = true;
    };
    rclone.enable = true;
  };

  services = {
    syncthing.enable = true;
  };
}

