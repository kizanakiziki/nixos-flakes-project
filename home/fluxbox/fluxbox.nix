{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty	# Terminal
    dunst	# Notification Daemon
    rofi	# Apps Launcher
    picom	# Window Compositor
    tint2	# Tint2
    # polybar	# Use Polybar if you want to
    nitrogen	# Wallpaper Manager
 

  xsession.windowManager.fluxbox = {
    enable = true;
    # menu = "";
    # apps = "";
    # init = "";
    # keys = "";
    # package = pkgs.fluxbox;
    # slitlist = "";
    # windowmenu = "";
    # extraCommandLineArgs = [ ];
  };

  home.file.".fluxbox" = {
    source = "./fluxbox";
    recursive = true;
  };

}
