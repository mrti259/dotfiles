{ pkgs, ... }:
{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "html"
      "nix"
    ];

    extraPackages = with pkgs; [
      nixd
      nixfmt
    ];

    userSettings = {
      vim_mode = true;
      format_on_save = "on";
      soft_wrap = "editor_width";

      minimap.show = "always";
      diff_view_style = "split";
      cli_default_open_behavior = "new_window";

      theme = {
        mode = "system";
        dark = "Ayu Dark";
      };

      terminal.bell = "system";

      project_panel.dock = "right";
      outline_panel.dock = "right";
      collaboration_panel.dock = "right";
      git_panel = {
        dock = "right";
        tree_view = true;
        group_by = "staging";
        diff_stats = true;
        collapse_untracked_diff = false;
      };

      session.trust_all_worktrees = true;

      telemetry = {
        metrics = false;
        diagnostics = false;
        anthropic_retention = false;
      };

      agent = {
        notify_when_agent_waiting = "primary_screen";
        play_sound_when_agent_done = "always";
        show_turn_stats = true;
        thinking_display = "always_collapsed";
        dock = "left";
      };

      agent_servers.OpenCode = {
        type = "custom";
        command = "opencode";
        args = [ "acp" ];
      };
    };
  };
}
