{ config, pkgs, ... }:
{
  virtualisation = {
    libvirtd.enable = true;
    docker.enable = true;
  };
  programs.dconf.enable = true;
}
