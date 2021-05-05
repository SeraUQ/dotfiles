{ config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    #./modules/qutebrowser.nix
    ./modules/bash.nix
    ./modules/nvim.nix
    ./modules/tmux.nix
    ./modules/git.nix
    ./modules/dunst.nix
    #./modules/alacritty.nix
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

  programs.direnv.enable = true;
  programs.direnv.enableNixDirenvIntegration = true;
  
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
