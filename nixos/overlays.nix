{ config, pkgs, lib, ... }:
{
   nixpkgs = {
     overlays = [
      (final: prev: {
        gnome = prev.gnome.overrideScope (gfinal: gprev: {
          gvfs = gprev.gvfs.override {
            googleSupport = true;
            gnomeSupport = true;
          };
        });
      })
    ];
    config.permittedInsecurePackages = [
      "libsoup-2.74.3"
    ];
  };
}
