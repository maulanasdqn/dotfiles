{ config, lib, pkgs, ... }:

with services;

{
  openssh.enable = true;
  blueman.enable = true;
  udisks2.enable = true;
  devmon.enable = true;
  printing.enable = true;
  getty.autologinUser = "ms";

}
