{ ... }:
{
  programs.zed-editor = {
    enable = true;
    userSettings = {
      vim_mode = true;
      format_on_save = "on";
      soft_wrap = "editor_width";
      telemetry.metrics = false;
      agent_servers = {
        OpenCode = {
          type = "custom";
          command = "opencode";
          args = [ "acp" ];
        };
      };
    };
  };
}
