{ config, pkgs, ... }:
{
 home.packages = with pkgs; [
   google-chrome flameshot zig zoom-us
   fd jq git-crypt nitrogen postman inkscape
   neofetch lazygit slack nestopia rofi
   alsa-utils python3 scrcpy exa pcmanfm
   ripgrep android-tools unzip unrar wget
   nodePackages.yarn picom-next tdesktop
   nodePackages.typescript spotify cbatticon
   nodePackages.live-server lsd pavucontrol
   nodePackages.prettier htop networkmanagerapplet
   bat insomnia tig dbeaver dwm-status figma-linux
   obs-studio virt-manager dmenu brave
 ];
}
