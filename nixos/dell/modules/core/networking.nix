{ pkgs, ... }:

{
  networking = {
    hostName = "nixos-dell";
    networkmanager = {
      enable = true;
      plugins = [ pkgs.networkmanager-openvpn ];
    };
  };
}
