{ inputs, pkgs, ... }:
{
  programs.fish.enable = true;
  users.users.borja = {
    isNormalUser = true;
    description = "Borja Garibotti";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      fishPlugins.sponge
      fishPlugins.pure
    ];
    shell = pkgs.fish;
  };

  home-manager.users.borja.imports = [
    inputs.nix-index-database.homeModules.nix-index
    inputs.zen-browser.homeModules.beta
    ../../../home-manager/borja/dell
  ];

  nix.settings.trusted-users = [ "root" "borja" ];
}
