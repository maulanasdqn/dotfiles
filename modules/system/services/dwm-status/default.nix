{ config, lib, pkgs, ... }:

with services;

{
  dwm-status = {
    enable = true;
    order = ["battery" "backlight" "audio" "time"];
  };
}
