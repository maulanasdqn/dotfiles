{ config, pkgs, ...}:

{
  programs.hyprland = {
    enable = true;
    package = hyprland.packages.${pkgs.system}.default;
  };
}
