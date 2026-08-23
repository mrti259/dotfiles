{ pkgs, ... }:
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
      fishPlugins.sponge
      fishPlugins.pure
    ];
  };

  programs = {
    gh.enable = true;
    fish.enable = true;
    devenv.enable = true;
    opencode.enable = true;
  };
}
