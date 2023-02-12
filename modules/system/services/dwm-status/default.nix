{ config, lib, pkgs, services, ... }:

with services;

{
  services.dwm-status = {
    enable = true;
    order = ["battery" "backlight" "audio" "time"];
  };
}
