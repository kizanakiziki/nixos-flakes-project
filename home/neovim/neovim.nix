{ config, ... }:

{
  programs.neovim = {
    viAlias = true;
    vimAlias = true;
    extraConfig = builtins.readFile ./nvim/init.vim;
  };

  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
  };
}
