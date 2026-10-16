{ inputs, pkgs, ... }:
{
  home.shellAliases.code = "codium";
  programs.vscodium = {
    enable = true;
    mutableExtensionsDir = true;
    profiles.default = {
      mutableUserSettings = true;
      extensions = with pkgs.vscode-extensions; [
        asvetliakov.vscode-neovim
        esbenp.prettier-vscode
        jnoortheen.nix-ide
        tomoki1207.pdf
        usernamehw.errorlens
      ];
      userSettings = {
        "workbench.editor.pinnedTabsOnSeparateRow" = true;
        "workbench.sideBar.location" = "right";
        "editor.wordWrap" = "on";
        "nix.enableLanguageServer" = true;
        "editor.formatOnSave" = true;
      };
    };
  };
}