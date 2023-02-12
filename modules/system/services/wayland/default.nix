{ config, lib, pkgs, ...}:

with services;

{
  wayland = {
    windowManager = {
      hyprland = {
        enable = true;
         xwayland = {
          enable = true;
          hidpi = true;
        };
        nvidiaPatches = false;
      };
    };
  };
}
