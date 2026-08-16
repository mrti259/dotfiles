{ inputs, ... }:
{
  users.users.borja = {
    isNormalUser = true;
    description = "Borja Garibotti";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

  home-manager.users.borja.imports = [
    inputs.nix-index-database.homeModules.nix-index
    ../../home-manager/borja
  ];

  nix.settings.trusted-users = [ "root" "borja" ];
}
