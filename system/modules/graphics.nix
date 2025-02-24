{ config, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      vaapiIntel
      intel-media-sdk
      vpl-gpu-rt
    ];
  };

  environment.sessionVariables = { LIBVA_DRIVER_NAME = "iHD"; };

}
