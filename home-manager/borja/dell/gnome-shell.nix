{ inputs, pkgs, ... }:
{
  programs.gnome-shell = {
    enable = true;
    extensions = with pkgs.gnomeExtensions; [
      { package = appindicator; }
      { package = picture-of-the-day; }
      { package = pip-on-top; }
      { package = power-off-options; }
      { package = tiling-shell; }
    ];
  };
}