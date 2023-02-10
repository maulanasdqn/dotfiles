
{ config, pkgs, ... }:
{
  boot = {
    supportedFilesystems = [ "ntfs" ];
    loader = {
      timeout = 0;
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };
}
