{ inputs, pkgs, ... }:
{
  imports = [
    ./fish.nix
    ./git.nix
    ./neovim.nix
    ./tmux.nix
  ];

  home = {
    username = "borja";
    homeDirectory = "/home/borja";
    backupFileExtension = "backup";
    file = {
      ".config/nixpkgs".source = ./dotfiles/nixpkgs;
      ".local/bin/git-prune-merged" = {
        source = ./dotfiles/bin/git-prune-merged;
        executable = true;
      };
    };
    sessionPath = [ "$HOME/.local/bin" ];
    packages = with pkgs; [
      gnumake
    ];
  };

  programs = {
    gh.enable = true;
    devenv.enable = true;
    opencode.enable = true;
  };
}
