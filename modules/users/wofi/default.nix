{ pkgs, lib, config, ... }:

with lib;

{
  home.file.".config/wofi.css".source = ./wofi.css;
}
