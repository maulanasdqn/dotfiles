{config, pkgs, ...}:
{

  imports = [ 
    ./boot
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

