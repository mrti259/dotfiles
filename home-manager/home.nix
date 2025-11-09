{ config, pkgs, ... }: let
  username = "borjag";
  homeDirectory = "/home/${username}";
in {
  home = {
    inherit username homeDirectory;
    stateVersion = "24.11";
    packages = with pkgs; [
      # term
      gnumake
      fishPlugins.sponge
      fishPlugins.pure

      # office
      libreoffice
      obs-studio
      obsidian

      # develop
      vscode
      gh
      devenv

      # comunication
      discord
      slack
      telegram-desktop
    ];
    file = {
      ".config/nixpkgs".source = dotfiles/nixpkgs;
      ".config/nvim".source = dotfiles/nvim;
    };
    sessionVariables = {
    };
  };
  programs = {
    home-manager.enable = true;
    direnv.enable = true;
    fish.enable = true;
    rclone.enable = true;
    nix-index-database.comma.enable = true;
    git = {
      enable = true;
      settings.user = {
        name = "Borja Garibotti";
        email = "mgaribotti@fi.uba.ar";
      };
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
    gnome-shell = {
      enable = true;
      extensions = with pkgs.gnomeExtensions; [
        { package = appindicator; }
        { package = pip-on-top; }
        { package = picture-of-the-day; }
        { package = power-off-options; }
      ];
    };
  };
  services = {
    syncthing.enable = true;
  };
}

