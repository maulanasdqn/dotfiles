
{config, pkgs, ...}:

{
  xdg = {
    autostart = {
      enable = true;
    };
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
      ];
    };
  };

  
}
