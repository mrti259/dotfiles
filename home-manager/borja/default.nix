{ config, pkgs, ... }:
let
  username = "borja";
  homeDirectory = "/home/${username}";
in {
  imports = [
    ../common
  ];

  home = {
    inherit username homeDirectory;
    stateVersion = "24.11";

    packages = with pkgs; [
      # office
      libreoffice
      # obs-studio
      obsidian
      maestral
      xournalpp

      # comunication
      telegram-desktop

      # desktop
      fedora-backgrounds.f34
    ];
    file = {
      ".config/nixpkgs".source = ../common/dotfiles/nixpkgs;
    };
    shellAliases = {
      code = "codium";
    };
  };

  programs = {
    nix-index-database.comma.enable = true;
    rclone.enable = true;
    gnome-shell = {
      enable = true;
      extensions = with pkgs.gnomeExtensions; [
        { package = appindicator; }
        { package = pip-on-top; }
        { package = power-off-options; }
        { package = tiling-shell; }
      ];
    };
    vscodium.enable = true;
  };

  services = {
    syncthing.enable = true;
  };
}

