{ config, pkgs, ... }:
{
  virtualisation = {
    libvirtd.enable = true;
    docker.enable = true;
    waydroid.enable = true;
    lxd.enable = true;
  };
  programs.dconf.enable = true;
}
