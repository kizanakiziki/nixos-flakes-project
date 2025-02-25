{ pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run: 
  # $ nix search wget (this need an experimental features called 'nix-command' enabled)
  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    btop
    rar unrar zip unzip
    fastfetch
    # openjdk	# Optional. Use this if you want to install JDownloader2
  ];
}
