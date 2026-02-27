# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/core/boot.nix
    ./modules/core/nix.nix
    ./modules/core/locale.nix
    ./modules/core/networking.nix
    ./modules/core/overlays.nix
    ./modules/hardware/laptop.nix
    ./modules/hardware/power-management.nix
    ./modules/desktop/audio.nix
    ./modules/desktop/services.nix
    ./modules/desktop/gnome.nix
    ./modules/virtualisation/docker.nix
    # ./modules/virtualisation/podman.nix
    ./modules/users/users.nix
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}
