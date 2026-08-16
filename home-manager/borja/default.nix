{ pkgs, ... }:
let
  username = "borja";
  homeDirectory = "/home/${username}";
in
{
  imports = [
    ../common
  ];

  home = {
    inherit username homeDirectory;
    stateVersion = "24.11";

    packages = with pkgs; [
      ## office
      maestral
      obsidian
      xournalpp
      krita
      libreoffice
      # obs-studio

      ## comunication
      telegram-desktop

      ## desktop
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
    gnome-shell = {
      enable = true;
      extensions = with pkgs.gnomeExtensions; [
        { package = appindicator; }
        { package = picture-of-the-day; }
        { package = pip-on-top; }
        { package = power-off-options; }
        { package = tiling-shell; }
      ];
    };
    vscodium.enable = true;
    rclone.enable = true;
  };

  services = {
    syncthing.enable = true;
  };
}

