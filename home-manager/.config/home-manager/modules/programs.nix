{ ... }:

{
  programs.home-manager.enable = true;

  programs.fish.enable = true;

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
