{ ... }:

{
  services = {
    printing.enable = true;
    xserver = {
      enable = true;
      xkb = {
        layout = "latam";
        variant = "";
      };
    };
    flatpak.enable = true;
  };
}
