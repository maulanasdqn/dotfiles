{ config, lib, pkgs, services, ... }:

with services;

{
  services.mpd = {
    enable = true;
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
    network.listenAddress = "any";
    startWhenNeeded = true; #
  };
}
