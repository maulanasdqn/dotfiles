
{config, pkgs, ...}:

{
  xdg = {
    autostart = {
      enable = true;
    };
    portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-wlr
        pkgs.xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
      ];

      gtkUsePortal = true;
    };
  };

  
}
