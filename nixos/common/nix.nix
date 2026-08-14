{ ... }:

{
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      # trusted-users = [ "root" "borjag" ];
      flake-registry = "";
    };
    gc = {
      automatic = true;
      dates = "monthly";
    };
    channel.enable = false;
  };
}
