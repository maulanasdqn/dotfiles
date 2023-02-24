
{config, pkgs, ... }:
{

  home.packages = with pkgs; [
    libcap gcc
  ];

  programs.go = {
    enable = true;
  };
}
