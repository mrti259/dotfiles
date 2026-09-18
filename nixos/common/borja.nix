{ pkgs, ... }:
{
  programs.fish.enable = true;

  users.users.borja = {
    isNormalUser = true;
    description = "Borja Garibotti";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.fish;
  };

  nix.settings.trusted-users = [ "root" "borja" ];
}
