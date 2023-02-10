{
  description = "Maulana Sodiqin DOTFILES with Nix";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    devenv.url = "github:cachix/devenv/v0.5";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, devenv, ...}@inputs:

  let
    inherit (nixpkgs) lib;
    
    util = import ./lib {
      inherit system pkgs home-manager lib; overlays = (pkgs.overlays);
    };

    inherit (util) user;
    inherit (util) host;

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
      overlays = [
        (import ./overlays)
      ];
    };

    system = "x86_64-linux";

  in {
    pkgs = [devenv.packages.x86_64-linux.devenv];
    nixosConfigurations = {
      beast = host.mkHost {
        name = "beast";
        kernelPackage = pkgs.linuxPackages_latest;
        initrdMods = [ "xhci_pci" "ahci" "nvme" "usb_storage" "usbhid" "sd_mod" "rtsx_pci_sdmmc" ];
        kernelMods = [ "kvm-intel" ];
        users = [{
          name = "ms";
          groups = [ "wheel" "docker" "libvirtd" "networkmanager" "plugdev" ];
          uid = 1000;
          shell = pkgs.zsh;
        }];
        cpuCores = 8;
      };
    };
  };
}
