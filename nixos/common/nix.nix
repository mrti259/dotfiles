{ ... }:

{
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      # trusted-users = [ "root" "borja" ];
      flake-registry = "";
    };
    gc = {
      automatic = true;
      dates = "monthly";
    };
    channel.enable = false;
  };
}
