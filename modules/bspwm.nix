{pkgs, ...}: {
  xsession.windowManager.bspwm = {
    enable = true;
    
    monitors = {
      HDMI-1 = ["一" "二" "三" "四" "五"];
    };

    rules = {
      "firefox" = {
        desktop = "^3";
      };
      "Discord" = {
        desktop = "^2";
      };
    };

    settings = {
      border_width = 0;
      window_gap = 0;
    };

    startupPrograms = [
      "systemctl --user import-environment DISPLAY"
      "sxhkd"
      "st"
      "firefox"
      "Discord"
    ];
  };
}
