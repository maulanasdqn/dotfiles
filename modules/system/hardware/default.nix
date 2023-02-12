{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ 
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.blacklistedKernelModules = [ "nouveau" ];

  fileSystems."/" = { device = "/dev/disk/by-uuid/1fb10a47-7121-4f0d-8b58-7f4227d1e23c";
    fsType = "xfs";
  };

  fileSystems."/boot" = { device = "/dev/disk/by-uuid/D55F-2EBF";
    fsType = "vfat";
  };

  swapDevices = [
    {
      device = "/dev/disk/by-uuid/7ac225c1-7db2-4fe5-a4c7-115f61b8d0f0";
    }
  ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  hardware = {
    bluetooth.enable = true;
    opengl = {
      enable = true;
      driSupport = true;
      extraPackages = with pkgs; [
        intel-media-driver
        vaapiIntel
        vaapiVdpau
        libvdpau-va-gl
      ];
    };
  };
}
