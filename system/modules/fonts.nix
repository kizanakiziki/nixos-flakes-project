{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    nerdfonts
  ];

  fonts = {
    fontDir.enable = true;
    fontconfig = {
      enable = true;
      antialias = true;
    };
  };
}
