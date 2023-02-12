{config, pkgs, ...}:
{

  imports = [ 
    ./boot
    ./hyprland
    ./xdg
    ./config
    ./xserver
    ./audio
    ./environtment
    ./hardware
    ./services
    ./virtual
    ./common
    ./shell
    ./security
  ];
 
}

