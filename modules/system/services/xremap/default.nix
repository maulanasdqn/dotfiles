{ config, lib, pkgs, ...}:

with lib;
{
  services.xremap = {
    enable = true;
    withHypr = true;
    withSway = true;
    modmap = {
      remap = {
        CapsLock = "Esc";
      };
    };
  };
}
