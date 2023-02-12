{ config, lib, pkgs, services, ... }:
with services;

{
  services.gnome = {
    gnome-keyring.enable = true;
    core-utilities.enable = false;
  };
}
