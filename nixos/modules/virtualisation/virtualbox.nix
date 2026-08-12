{ ... }:

{
  virtualisation.virtualbox = {
    # Habilitar VirtualBox en el host
    host.enable = true;
    # Opcional: habilitar Guest Additions si quieres carpetas compartidas y clipboard
    guest.enable = true;
  };
  # Agregar tu usuario al grupo vboxusers
  users.extraGroups.vboxusers.members = [ "borjag" ];
}
