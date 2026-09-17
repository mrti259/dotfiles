{ inputs, pkgs, ... }:
{
  programs.fish.enable = true;
  home.packages = with pkgs; [
    fishPlugins.sponge
    fishPlugins.pure
  ];
}
