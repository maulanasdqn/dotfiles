{ config, ... }:

{
  imports = [
    ./actkbd
    ./greetd
    ./common
    ./dwm-status
    ./gnome
    ./mpd
    ./xserver
    #./xremap
  ];

}
