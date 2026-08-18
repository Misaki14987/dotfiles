{ config, ... }:

{
  xdg.configFile."caelestia/shell.json".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Projects/dotfiles/caelestia/.config/caelestia/shell.json";
}
