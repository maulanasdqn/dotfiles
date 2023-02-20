{ config, ... }:

{
  imports = [
    ./actkbd
    ./greetd
    ./common
    ./xremap
    ./dwm-status
    ./gnome
    ./mpd
    ./xserver
  ];

}
