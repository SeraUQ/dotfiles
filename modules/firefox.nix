{ config, pkgs, NUR, ... }: {
  programs.firefox = {
    enable = true;
    profiles = {
      "sera" = {
        name = "Seraphina";
      };
    };
    extensions = with pkgs; [ 
      nur.repos.rycee.firefox-addons.ublock-origin
      ublock-origin
      privacy-badger
    ];
  };
}
