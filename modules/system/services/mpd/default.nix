{ config, lib, pkgs, ... }:

with services;

{
  mpd = {
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
