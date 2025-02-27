{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # User and GUI packages should be here
    openjdk		# Java Runtime
    # TUI
    duf			# Disk usage utility
    ncdu		# Disk usage analyzer
    mc			# Midnight Commander, TUI File Manager
    ranger		# Ranger, TUI File Manager
    f2			# Batch rename utility
    # GUI System
    gparted		# Partition Management
    exfatprogs		# exFAT suppport, can move to system
    gnome-disk-utility	# Disk Management
    appimage-run	# AppImage Run Toolbox
    # GUI User
    firefox		# Web Browser
    mpv			# MPV Video Player
    obsidian		# Note taking apps
    realvnc-vnc-viewer	# Remote
    megasync		# Mega.nz
  ]:
}
