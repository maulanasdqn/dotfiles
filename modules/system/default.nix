{config, pkgs, ...}:
{

  imports = [ 
    ./boot
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
  ];
 
}

