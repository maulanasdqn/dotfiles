{config, pkgs, ...}:
{

  imports = [ 
    ./boot
    ./xdg
    ./config
    ./hyprland
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

