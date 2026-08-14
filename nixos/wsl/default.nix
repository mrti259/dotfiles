{ inputs, ... }:

{
  imports = [
    inputs.nixos-wsl.nixosModules.default
  ];

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      flake-registry = "";
    };
    channel.enable = false;
  };

  nixpkgs = {
    config.allowUnfree = true;
  };

  wsl = {
    enable = true;
    defaultUser = "nixos";
  };

  nixpkgs.hostPlatform = "x86_64-linux";

  system.stateVersion = "26.05";
}
