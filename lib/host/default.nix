{ system, pkgs, home-manager, lib, user, hyprland, xdph, xremap-flake, ... }:
with builtins;
{
  xdg-desktop-portal-hyprland = xdph.packages.${system}.default.override {
    hyprland-share-picker = xdph.packages.${system}.hyprland-share-picker.override {inherit hyprland;};
  };

  mkHost = { name, initrdMods, kernelMods, kernelPackage,
    cpuCores, users ? []
  }:

  let
    userCfg = {
      inherit name cpuCores;
    };
    sys_users = (map (u: user.mkSystemUser u) users);
  in

  lib.nixosSystem {

    inherit system;

    modules = [
      hyprland.nixosModules.default
      xremap-flake.nixosModules.default
      {
        imports = [ ../../modules/system ] ++ sys_users;

        environment.etc = {
          "hmsystemdata.json".text = toJSON userCfg;
        };
       
        networking = { 
          hostName = "${name}";
          networkmanager.enable = true; 
          firewall.enable = true;
          firewall.allowPing = true;
        };
       
         boot.initrd.availableKernelModules = initrdMods;
         boot.kernelModules = kernelMods;
         boot.kernelPackages = kernelPackage;
       
         nixpkgs.pkgs = pkgs;
         nix.settings.max-jobs = lib.mkDefault cpuCores;
      
      }
      
      home-manager.nixosModules.home-manager  {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.users.ms = {config, pkgs, lib, xdph, hyprland, inputs, ...}: {
          
          imports = [
            ../../modules/users
          ];
        };
      }
    ];
  };
}
