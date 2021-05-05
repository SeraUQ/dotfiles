{ pkgs, ... }:

{
  programs.bash = 
  {
    enable = true;

    sessionVariables = {
      EDITOR = "nvim";
      TERMINAL = "alacritty";
      LESSHST = "/dev/null";
      PATH = "$PATH:/home/sera/scr/";
    };

    shellOptions = [
      "autocd"
    ];

    shellAliases = {
      ls = "ls --color=auto";
      l  = "ls";
      la = "ls -A";
      ll = "ls -lh";
      lla= "ls -Alah";
      cls= "clear";
      rm = "rm -v";
      mv = "mv -v";
      cp = "cp -v";

      gc= "git clone";
    };

    initExtra = ''
      set -o vi
      PS1="\W> "
    '';
  };

}
