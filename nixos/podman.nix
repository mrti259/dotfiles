{ config, pkgs, ... }:
{
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
      dockerSocket.enable = true;
      autoPrune = {
        enable = true;
        dates = "monthly";
      };
    };
    containers.enable = true;
  };
  environment.systemPackages = with pkgs; [
    podman-compose
    podman-tui
  ];
}
