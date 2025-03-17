---
title: NixOS Flake w/ Home Manager Installation
---

This README still in development.

# Pre Installation
# Installation
# Post Installation
After finishing the NixOS installation and ready to use, login to your system from `tty`. Use your username and password in the `tty` login menu.
## Install first packages
You need to install needed packages for easier Flake configuration. This is optional if you want to use `nano` text editor. I will use `neovim` for my text editor. But, `git` is needed.
``` nixd
{ config, pkgs, ... }:
{
  # find this line and install needed packages inside of square bracket.
  environment.systemPackages = with pkgs; [
    neovim
    git
    wget
  ];
}
```
## Configure Flakes
## Configure Home Manager
## Start using your system
