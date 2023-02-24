{ inputs, lib, config, pkgs, ... }:

with lib;

{
  home.packages = with pkgs; [
    eww-wayland
    pamixer
    brightnessctl
    gdk-pixbuf
  ];

  home.file.".config/eww/eww.scss".source = ./eww.scss;
  home.file.".config/eww/eww.yuck".source = ./eww.yuck;

  home.file.".config/eww/scripts/battery.sh" = {
    source = ./scripts/battery.sh;
    executable = true;
  };

  home.file.".config/eww/scripts/wifi.sh" = {
    source = ./scripts/wifi.sh;
    executable = true;
  };

  home.file.".config/eww/scripts/brightness.sh" = {
    source = ./scripts/brightness.sh;
    executable = true;
  };

  home.file.".config/eww/scripts/workspaces.sh" = {
    source = ./scripts/workspaces.sh;
    executable = true;
  };

  home.file.".config/eww/scripts/workspaces.lua" = {
    source = ./scripts/workspaces.lua;
    executable = true;
  };
}
