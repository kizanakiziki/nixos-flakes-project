{ config, pkgs, ... }:

{
  # Enable X11 Windowing System
  services.xserver.enable = true

  # Packages needed for X11
  environment.systemPackages = with.pkgs; [
    xorg.server
    xorg.xrandr
    xorg.xinit
    xorg.xset
    xorg.xinput
  ];
}
