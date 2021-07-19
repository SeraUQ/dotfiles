{ config, pkgs, NUR, ... }: {
  programs.firefox = {
    enable = true;
    profiles = {
      "sera" = {
        name = "Seraphina";
      };
    };
    extensions = [ 
    ];
  };
}
