{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "a";
    terminal = "tmux-256color";
    escapeTime = 0;
    extraConfig = ''
      set -g status-style bg=white
      set -g status-style fg=black
      set -g status off

      bind-key r source-file .tmux.conf
      bind-key C new-window -c "#{pane_current_path}"
      bind-key -n C-J previous-window
      bind-key -n C-K next-window
#      bind-key '^"' split-window -v -c "#{pane_current_path}"
#      bind-key '^|' split-window -h -c "#{pane_current_path}"
      set-window-option -g window-status-current-style fg=cyan
    '';
  };
}
