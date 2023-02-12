{ config, pkgs, ...}:

{
  security = {
    polkit.enable = true;
    sudo = {
      enable = true;
      wheelNeedsPassword = false;
    };
    protectKernelImage = true;
  };
}
