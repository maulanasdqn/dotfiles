{ config, ... }:
{
  services = {
    gnome = {
      gnome-keyring.enable = true;
      core-utilities.enable = false;
    };
    dwm-status = {
      enable = true;
      order = [ "audio" "backlight" "battery" "cpu_load" "network" "time" ];
    };
    mpd = {
      enable = true;
      extraConfig = ''
        audio_output {
          type "pipewire"
          name "My PipeWire Output"
        }
      '';
      network.listenAddress = "any"; # if you want to allow non-localhost connections
      startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
    };
    openssh.enable = true;
    udisks2.enable = true;
    devmon.enable = true;
    printing.enable = true;
    getty.autologinUser = "ms";
    actkbd = {
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
  };
}
