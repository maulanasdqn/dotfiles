{ config, pkgs, ... }:

{
 home.packages = with pkgs; [
   google-chrome zig zoom-us
   fd jq git-crypt nitrogen postman inkscape
   neofetch lazygit slack nestopia
   alsa-utils pcmanfm
   ripgrep android-tools unzip unrar wget
   tdesktop
   spotify
   lsd pavucontrol
   htop networkmanagerapplet
   bat insomnia tig dbeaver
   obs-studio virt-manager dmenu brave acpi tlp
   sway-contrib.grimshot luajit
 ];
}
