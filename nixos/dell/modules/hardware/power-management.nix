{ config, ... }:

let
  swapFilePath = "/var/lib/swapfile";
  swapFileSize = 16 * 1024; # Size in MiB
  swapFileDevice = config.fileSystems."/".device;
  swapFileOffset = "17170432"; # Offset in KiB
in
{
  swapDevices = [
    { device = swapFilePath; size = swapFileSize; }
  ];

  boot.resumeDevice = swapFileDevice;
  boot.kernelParams = [ "resume_offset=${swapFileOffset}" ];

  powerManagement.enable = true;
  services.power-profiles-daemon.enable = true;

  services.logind.settings.Login = {
    HandleLidSwitch = "suspend-then-hibernate";
    HandleLidSwitchDocked = "suspend-then-hibernate";
    HandlePowerKey = "suspend-then-hibernate";
    IdleAction = "suspend-then-hibernate";
    IdleActionSec = "2m";
  };

  systemd.sleep.settings.Sleep = {
    HibernateDelaySec = "30m";
  };
}
