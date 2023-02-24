{ config, lib, pkgs, services, ... }:

with services;

{
  services = {
    openssh.enable = true;
    blueman.enable = true;
    udisks2.enable = true;
    devmon.enable = true;
    printing.enable = true;
    getty.autologinUser = "ms";
  };

}
