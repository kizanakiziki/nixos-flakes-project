{ config, pkgs, ... }:

{

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        enable = "Source,Sink,Media,Socket";
	Experimental = true;
      };
    };
  };

  services.blueman.enable = true;

  services.pipewire = {
    wireplumber.extraConfig.bluetoothEnhancements = {
      "monitor.bluez.properties" = {
        "bluez5.roles" = [
	  "a2dp_sink"
	  "a2dp_source"
	  "hsp_hs"
	  "hsp_ag"
	  "hfp_hf"
	  "hfp_ag"
	];
	"bluez5.codecs" = [
	  "sbc"
	  "aac"
	];
	"bluez5.enable-msbc" = true;
	"bluez5.enable-sbc-xq" = true;
	"bluez5.enable-hw-volume" = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    bluez
    bluez-alsa
    bluez-tools
    pulseaudioFull
  ];

}
