{ inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.nixos-wsl.nixosModules.default
    ../common/nix.nix
    ../common/nixpkgs.nix
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.nixos = {
      imports = [
        inputs.nix-index-database.homeModules.nix-index
        ../../home-manager/nixos
      ];
    };
  };

  wsl = {
    enable = true;
    defaultUser = "nixos";
  };

  networking.hostName = "nixos-wsl";

  nixpkgs.hostPlatform = "x86_64-linux";

  system.stateVersion = "26.05";
}
