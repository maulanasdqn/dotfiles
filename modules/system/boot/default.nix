{ config, pkgs, ... }:

{
  boot = {
    supportedFilesystems = [ "ntfs" ];
    loader = {
      timeout = 2;
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };

}
