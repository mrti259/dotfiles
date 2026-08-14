{ ... }:

{
  users.users.borja = {
    isNormalUser = true;
    description = "Borja Garibotti";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };
}
