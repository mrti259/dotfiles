{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      flake-registry = "";
    };
    gc = {
      automatic = true;
      dates = "weekly";
    };
    channel.enable = false;
  };
}
