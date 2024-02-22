# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: {

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Define any extra packages you would like to install here
  packages = with pkgs; [
    thunderbird
    tgpt
    gh
    github-copilot-cli
    armcord
    ncspot
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    home-manager
    zip
    git
    wget
    vim
    neovim
    nano
    firefox
  ];

  # The home.packages option allows you to install Nix packages into your environment.
  home.packages = [
    pkgs.alacritty
    pkgs.rofi-wayland
    pkgs.waybar
    pkgs.pavucontrol
    pkgs.grimblast
    pkgs.wdisplays
    pkgs.lf
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    inconsolata-nerdfont
    fira-code-nerdfont
    nerdfonts
    noto-fonts
    noto-fonts-color-emoji
    noto-fonts-emoji-blob-bin
    noto-fonts-monochrome-emoji
  ];
}
