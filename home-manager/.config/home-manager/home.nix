{ config, pkgs, claude-code, ... }:

{
  imports = [
    ./modules/packages.nix
    ./modules/programs.nix
    ./modules/i18n.nix
    ./modules/rust.nix
    ./modules/environment.nix
    ./modules/dev.nix
  ];

  home.username = "misaki";
  home.homeDirectory = "/home/misaki";
  home.stateVersion = "25.11";

  nixpkgs.config.allowUnfree = true;
}
