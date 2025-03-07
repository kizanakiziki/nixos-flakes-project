{ config, pkgs, ... }:

{
  programs.dbus = {
    enable = true;
    packages = [ pkgs.dconf ];
  };

  programs.dconf.enable = true;
}
