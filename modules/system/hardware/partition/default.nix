
{ config, lib, pkgs, modulesPath, ... }:

{
  fileSystems."/" =
    { device = "/dev/disk/by-uuid/ee57f6f1-50f4-4b0b-a6f2-a200181c2a62";
      fsType = "f2fs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/C379-D323";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/12b363f9-9c2d-4891-92c1-1559cd87ab26"; }
    ];
}
