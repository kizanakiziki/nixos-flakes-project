{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  # List packages installed in system profile. To search, run: 
  # $ nix search wget (this need an experimental features called 'nix-command' enabled)
  environment.systemPackages = with pkgs; [
    git wget appimage-run
    neovim
    duf ncdu mc ranger 
    btop
    rofi
    f2 # you can use this as nix-shell 
    gparted exfatprogs gnome-disk-utility
    rar unrar zip unzip
    pulseaudioFull
    fastfetch
    mpv
    obsidian
    openjdk
    realvnc-vnc-viewer
    megasync
  ];

}
