{pkgs, ...}: {
  xsession.windowManager.bspwm = {
    enable = true;
  };
  services.sxhkd = {
    enable = true;
  };
}
