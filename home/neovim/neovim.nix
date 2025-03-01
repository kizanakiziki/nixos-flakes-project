{ config, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    configure = {
      
    };
    # package = with pkgs; [];
  };

  home.file.".config/nvim" = {
    source = "./nvim";
    recursive = true;
  }
}
