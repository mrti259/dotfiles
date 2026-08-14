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
      gh

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
      ".config/nixpkgs".source = ./dotfiles/nixpkgs;
    };
    sessionVariables = {
    };
    shellAliases = {
      code = "codium";
    };
  };

  programs = {
    devenv.enable = true;
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
      withRuby = false;
      withPython3 = false;
      extraConfig = builtins.readFile ./dotfiles/nvim/init.vim;
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
    opencode.enable = true;
    vscodium.enable = true;
  };

  services = {
    syncthing.enable = true;
  };
}

