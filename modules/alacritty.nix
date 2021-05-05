{ ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
        font = {
          normal = {
            family = "Terminus";
          };
          size = 10;
          offset = {
            x = 1;
            y = 1;
          };
        };
        colors = {
          primary = {
            background = "#808080";
            foreground = "#000000";
          };
          normal = {
            black = "#222222";
            red =   "#ff0000";
            green = "#3a9e24";
            yellow ="#ff0ff0";
            blue =  "#005577";
            magenta="#ff3d8a";
            cyan =  "#009977";
            white = "#ffffff";
          };
    };
  };
};
}
