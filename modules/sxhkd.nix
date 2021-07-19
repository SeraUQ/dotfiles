{pkgs, ...}: {
  services.sxhkd = {
    enable = true;
    keybindings = {
      "alt + x" = "dmenu_run";
      "alt + Return" = "alacritty";
      "super + shift + r" = "bspc wm -r";
      "super + shift + c" = "bspc node -k";
      "super + {_, shift + } {1-5,0}" = "bspc {desktop -f, node -d} '^{1-5,10}'";
      "super + Escape" = "	pkill -USR1 -x sxhkd";
      "alt + e" = "kaomoji-dmenu";
      "alt + shift + s" = "screenshot";
      "alt + s" = "screenshot-clipboard";
      "alt + w" = "notify-info weather";
      "alt + t" = "notify-info time";
      "super + f" = "bspc node -t floating";
      "super + shift + f" = "bspc node -t fullscreen";
      "super + t" = "bspc node -t tiled";
    };
  };
}
