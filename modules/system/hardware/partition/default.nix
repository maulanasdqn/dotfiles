
{ config, lib, pkgs, modulesPath, ... }:

{
  fileSystems."/" =
    { device = "/dev/disk/by-uuid/ffc19814-8c1f-44b5-8a4e-c0c4cb722f25";
      fsType = "f2fs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/4250-24FA";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/ad94b71a-f1f6-4182-bd0d-f23bcb0ce872"; }
    ];
}
