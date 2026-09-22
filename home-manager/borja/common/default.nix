{ inputs, pkgs, ... }:
{
  imports = [
    ./fish.nix
    ./git.nix
    ./neovim.nix
    ./tmux.nix
  ];

  home = {
    username = "borja";
    homeDirectory = "/home/borja";
    file = {
      ".config/nixpkgs".source = ./dotfiles/nixpkgs;
    };
    packages = with pkgs; [
      gnumake
    ];
  };

  programs = {
    gh.enable = true;
    devenv.enable = true;
    opencode = {
      enable = true;
      # package = inputs.opencode.packages.${pkgs.system}.opencode;
    };
  };
}
