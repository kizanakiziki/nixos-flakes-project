{ config, pkgs, ... }:

{
  # LightDM
  services.xserver = {
    displayManager.lightdm = {
      enable = true; 
      # background = /path;
      # extraConfig = '' '';
      greeters.gtl = {
        enable = true;
	# clock-format = " ";
	# indicators = [  ];
	# theme.package = [ pkgs.gnome-themes-extra ];
	# theme.name = "Adwaita";
	# iconTheme.package = [ pkgs.adwaita-icon-theme ];
	# iconTheme.name = "Adwaita";
	# cursorTheme.package = [ pkgs.adwaita-icon-theme ];
	# cursorTheme.name = "Adwaita";
	# cursorTheme.size = 16;
	# extraConfig = '' '';
      };
    }; 
  };

}
