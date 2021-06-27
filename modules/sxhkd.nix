{pkgs, ...}: {
  services.sxhkd = {
    enable = true;
    keybindings = {
      "super + x" = "dmenu_run";
      "super + Return" = "st";
      "super + shift + r" = "bspc wm -r";
      "super + {_, shift + } {1-5,0}" = "bspc {desktop -f, node -d} '^{1-5,10}'";
      "super + Escape" = "	pkill -USR1 -x sxhkd";
      "super + e" = "kaomoji-dmenu";
    };
  };
}
