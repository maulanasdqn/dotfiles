{ pkgs, home-manager, system, lib, overlays, hyprland, xdph, ... }:
rec {
  user = import ./user { inherit pkgs home-manager lib system overlays; };
  host = import ./host { inherit system pkgs home-manager lib user hyprland xdph; };
}
