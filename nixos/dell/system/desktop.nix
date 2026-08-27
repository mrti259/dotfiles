{ pkgs, ... }:

{
  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    printing.enable = true;
    flatpak.enable = true;
  };

  security.rtkit.enable = true;

  environment = {
    sessionVariables.QT_QPA_PLATFORMTHEME = "gtk2";
    extraInit = ''
      export XDG_DATA_DIRS=$XDG_DATA_DIRS:${pkgs.gtk3}/share/gsettings-schemas/${pkgs.gtk3.name}
    '';
  };
}
