{ pkgs, ... }: {

programs.neovim = {
  enable = true;

  viAlias = true;
  vimAlias = true;
  vimdiffAlias = true;

  plugins = with pkgs.vimPlugins; [
    vim-nix
    vimspector
  ];
  
  extraConfig = ''
    " Keybindings
    
    
    " Some basic config
    syntax on
    
    set relativenumber
    set number

    set tabstop=4
    set expandtab
    set shiftwidth=4
    set mouse=i

  '';
};
}
