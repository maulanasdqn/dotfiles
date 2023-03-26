{ pkgs, home-manager, system, lib, overlays, hyprland, xremap-flake, ... }:
rec {
  user = import ./user { inherit pkgs home-manager lib system overlays; };
  host = import ./host { inherit system pkgs home-manager lib user hyprland xremap-flake; };
}
