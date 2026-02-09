{ ... }:

{
  users.users.borjag = {
    isNormalUser = true;
    description = "Borja Garibotti";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
