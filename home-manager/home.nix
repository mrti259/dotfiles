{ config, pkgs, ... }:
let
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
      maestral
      xournalpp

      # develop
      vscode
      gh
      devenv

      # comunication
      telegram-desktop

      # desktop
      fedora-backgrounds.f34
    ];
    file = {
      ".config/nixpkgs".source = dotfiles/nixpkgs;
      ".config/nvim/init.vim".source = dotfiles/nvim/init.vim;
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
    tmux = {
      enable = true;
      mouse = true;
      disableConfirmationPrompt = true;
    };
    gnome-shell = {
      enable = true;
      extensions = with pkgs.gnomeExtensions; [
        { package = appindicator; }
        { package = pip-on-top; }
        { package = power-off-options; }
        { package = tiling-shell; }
      ];
    };
  };
  services = {
    syncthing.enable = true;
  };
}

