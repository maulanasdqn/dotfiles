{ config, pkgs, lib, services, ...}:

with services;

{
    services.xserver = {
      enable = true;
      windowManager = {
        #dwm.enable = true;
        #i3wm.enable = true;
      };
      displayManager = {
       #gdm.enable = true;
       #sddm.enable = true;
       #lightdm.enable = true;
       startx.enable = true;
      };
      desktopManager = {
        #xfce.enable = true;
        #xterm.enable = false;
        #gnome.enable = true;
        #plasma5.enable = true;
        #cinnamon.enable = true;
      };
      layout = "us";
      xkbOptions = "caps:swapescape";
      libinput = { 
        enable = true;
        touchpad = {
          naturalScrolling = true;
        };
      };
    };
}
