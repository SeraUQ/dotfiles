{pkgs, ...}: let
  kaomoji-rofi = pkgs.writeScriptBin "kaomoji-rofi" ''
  #!/usr/bin/env bash

  file="$HOME/.config/kaomoji_list"
  rofi_theme="-theme /usr/share/rofi/themes/arthur.rasi"

  category="$(grep -oi "[^ ]\+$" $file |uniq)"
  cat="$(echo "$category" | rofi -dmenu -i $rofi_theme)"

  kaomoji="$(grep $cat $file |sed "s/ $cat//g"|rofi -dmenu -i $rofi_theme)"

  echo $kaomoji | xclip -selection clipboard
  '';

  kaomoji-dmenu = pkgs.writeScriptBin "kaomoji-dmenu" ''
    #!/usr/bin/env bash

    file="$HOME/.config/kaomoji_list"

    category="$(grep -oi "[^ ]\+$" $file | uniq)"
    cat="$(echo "$category" | dmenu -l 6 -b -i)"

    kaomoji="$(grep $cat $file |sed "s/ $cat//g" | dmenu -l 6 -b -i)"

    echo $kaomoji | xclip -selection clipboard
  '';
in {
  home.packages = [ 
    kaomoji-rofi
    kaomoji-dmenu
  ];
}
