{ inputs, pkgs, ... }:
{
  imports = [
    ./git.nix
    ./neovim.nix
    ./tmux.nix
  ];

  home = {
    username = "borja";
    homeDirectory = "/home/borja";
    packages = with pkgs; [
      gnumake
    ];
  };

  programs = {
    gh.enable = true;
    devenv.enable = true;
    opencode = {
      enable = true;
      package = inputs.opencode.packages.${pkgs.system}.opencode;
    };
  };
}
