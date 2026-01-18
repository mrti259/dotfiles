{ ... }:
let
  swapFilePath = "/var/lib/swapfile";
  swapFileSize = 16 * 1024; # Size in MiB
  swapFileDevice = "/dev/disk/by-uuid/9208c880-578a-49e4-96a7-444d63683811";
  swapFileOffset = "233472"; # Offset in KiB
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
  };
  systemd.sleep.extraConfig = ''
    HibernateDelaySec=30m
  '';
}