{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ 
    (modulesPath + "/installer/scan/not-detected.nix")
    ./partition
    ./feature
  ];

  boot.blacklistedKernelModules = [ "nouveau" ];

 }
