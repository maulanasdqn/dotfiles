{ config, pkgs, ...}:

{
  programs.light.enable = true;
  
  time.timeZone = "Asia/Jakarta";
  
  system = {
    autoUpgrade = {
      enable = true;
      allowReboot = true;
    };
    stateVersion = "23.05";
  };
  
  i18n.defaultLocale = "en_US.UTF-8";
  
  console = {
    font = "Hack Nerd Font Mono";
    keyMap = "us";
  };
   
  nixpkgs.config.permittedInsecurePackages = [
    "xen-4.10.4"
  ];
  
  programs = {
    mtr = {
      enable = true;
    };
    gnupg.agent = {
       enable = true;
       enableSSHSupport = true;
    };
  };
}
