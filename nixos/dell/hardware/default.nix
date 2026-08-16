{
  imports = [
    ./hardware-configuration.nix
    ./power-management.nix
  ];
  hardware.sensor.iio.enable = true;
  services.thermald.enable = true;
}
