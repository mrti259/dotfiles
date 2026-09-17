{ config, ... }:

let
  swapFileDevice = "/dev/disk/by-uuid/b7080ebf-6379-4eb0-b758-63ae66399c94";
in
{
  boot.resumeDevice = swapFileDevice;

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
