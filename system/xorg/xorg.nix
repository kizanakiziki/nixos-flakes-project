{ config, pkgs, ... }:

{
  # Enable X11 Windowing System
  services.xserver.enable = true

  # Enable Display Manager
  services.xserver = {
    displayManager.lightdm.enable = true;
    # displayManager.ly.enable = true;
  };

  # Packages needed for X11
  environment.systemPackages = with.pkgs; [
    xorg.server
    xorg.xrandr
    xorg.xinit
    xorg.xset
    xorg.xinput
  ];
}
