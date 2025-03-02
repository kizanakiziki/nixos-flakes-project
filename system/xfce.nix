{ config, pkgs, ... }:
{
  services.xserver.desktopManager.xfce = {
    enable = true;
    enableScreensaver = true;
    enableXfwm = true;
    noDesktop = false;
  };

  program = {
    thunar.enable = true;
    xfconv.enable = true;
    light.brightnessKeys.enable = true;
  };

  environment.xfce.excludePackages = with pkgs; [
    # xfce.xfce4-volumed-pulse		# this is example
  ];
}
