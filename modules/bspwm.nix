{pkgs, ...}: {
  xsession = {
    windowManager.bspwm = {
      enable = true;
      
      monitors = {
        HDMI-1 = ["一" "二" "三" "四" "五"];
      };

      rules = {
        "firefox" = {
          desktop = "^3";
        };
        "ripcord" = {
          desktop = "^2";
        };
      };

      startupPrograms = [

        "systemctl --user import-environment DISPLAY"
        "xset r rate 200 60"
        "sxhkd "
        "fcitx"
        "alacritty -e tmux "
        "firefox "
        "ripcord"
      ];

      settings = {
        border_width = 0;
        window_gap = 0;
        ignore_ewmh_focus = true;
      };
    };
  };
}
