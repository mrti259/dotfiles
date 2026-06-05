{ ... }:

{
  # Habilitar VirtualBox en el host
  virtualisation.virtualbox.host.enable = true;

  # Agregar tu usuario al grupo vboxusers
  users.extraGroups.vboxusers.members = [ "borjag" ];

  # Opcional: habilitar Guest Additions si quieres carpetas compartidas y clipboard
  virtualisation.virtualbox.guest.enable = true;
}
