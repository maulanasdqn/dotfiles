{ config, lib, pkgs, ... }:
with services;

{
  gnome = {
    gnome-keyring.enable = true;
    core-utilities.enable = false;
  };
}
