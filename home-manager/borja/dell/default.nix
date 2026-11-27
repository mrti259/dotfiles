{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nix-index-database.homeModules.nix-index
    inputs.zen-browser.homeModules.beta
    ../common

    ./gnome-shell.nix
    ./zed-editor.nix
  ];

  home = {
    stateVersion = "24.11";
    packages = with pkgs; [
      ## office
      maestral
      obsidian
      xournalpp
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
  };

  services = {
    syncthing.enable = true;
  };
}
