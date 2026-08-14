{ ... }:

{
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      trusted-users = [ "root" "borjag" ];
    };
    gc = {
      automatic = true;
      dates = "monthly";
    };
  };
}
