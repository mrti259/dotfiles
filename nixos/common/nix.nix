{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      flake-registry = "";
    };
    gc = {
      automatic = true;
      dates = "monthly";
    };
    channel.enable = false;
  };
}
