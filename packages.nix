{ pkgs, ... }:

{
  home.packages = with pkgs;[
    firefox
    st dmenu dwm
    wget
    htop xclip
    godot
    numix-icon-theme-circle gnome3.adwaita-icon-theme gnome3.gsettings-desktop-schemas
    maim
    imagemagick
    ripcord discord
    file
    mpv ffmpeg
    pulsemixer
    gimp inkscape blender
    dotnet-sdk_5
    lutris 
    libnotify
    libreoffice-fresh
    autoconf
    xf86_input_wacom
    colorpicker
    zathura sxiv
    unrar unzip p7zip
    openjdk11
  ];
}
