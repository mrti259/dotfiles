{ ... }:
{
  imports = [
    ../common
  ];
  home = {
    username = "nixos";
    homeDirectory = "/home/nixos";
    stateVersion = "26.05";
  };
}
