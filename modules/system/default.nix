{config, pkgs, ...}:
{

  imports = [ 
    ./boot
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

