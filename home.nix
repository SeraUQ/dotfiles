{ config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./modules/bash.nix
    ./modules/nvim.nix
    ./modules/tmux.nix
    ./modules/git.nix
    ./modules/dunst.nix
    ./modules/bspwm.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
    nativeOnly = true;
  };

  # Shell Options
  programs.command-not-found.enable = true;

  # Nix Package Overlay
  nixpkgs.overlays = [
    (self: super: { 
        st = super.st.overrideAttrs (_: {
          patches = [ ./modules/st-mypatch.diff ];
        });
        dwm = super.dwm.overrideAttrs (_: {
          patches = [ ./modules/dwm-mypatch.diff ];
        });
     }
    )
  ];

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
