
{ config, lib, pkgs, services, ... }:

with services;

{
  services.actkbd = {
    enable = true;
    bindings = [
      { 
        keys = [ 225 ];
        events = [ "key" ];
        command = "/run/current-system/sw/bin/light -A 5";
      }
      { keys = [ 224 ];
        events = [ "key" ];
        command = "/run/current-system/sw/bin/light -U 5";
      }
    ];
  };
}
