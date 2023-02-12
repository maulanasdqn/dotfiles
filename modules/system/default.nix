{config, pkgs, ...}:
{

  imports = [ 
    ./boot
    ./hyprland
    ./xdg
    ./config
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

