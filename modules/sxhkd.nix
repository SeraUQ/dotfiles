{pkgs, ...}: {
  services.sxhkd = {
    enable = true;
    keybindings = {
      "super + x" = "dmenu_run";
      "super + Return" = "alacritty";
      "super + shift + r" = "bspc wm -r";
      "super + shift + c" = "bspc node -k";
      "super + {_, shift + } {1-5,0}" = "bspc {desktop -f, node -d} '^{1-5,10}'";
      "super + Escape" = "	pkill -USR1 -x sxhkd";
      "super + e" = "kaomoji-dmenu";
      "super + shift + s" = "screenshot";
      "super + s" = "screenshot-clipboard";
      "super + w" = "notify-info weather";
      "super + t" = "notify-info time";
      "super + f" = "bspc node -t floating";
      "super + shift + f" = "bspc node -t fullscreen";
    };
  };
}
