{
  description = "Home Manager + NixOS configuration of borja";

  inputs = {
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
    opencode = {
      # v1.18.30 no funk
      url = "github:anomalyco/opencode/v1.18.29";
    };
  };

  outputs = {
    nixpkgs,
    ... } @ inputs :
    let
    in
    {
      nixosConfigurations = {
        nixos-dell = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./nixos/dell
            {
              home-manager.users.borja.imports = [
                ./home-manager/borja/dell
              ];
            }
          ];
        };
        nixos-wsl = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./nixos/wsl
            {
              home-manager.users.borja.imports = [
                ./home-manager/borja/wsl
              ];
            }
          ];
        };
      };
    };
}
