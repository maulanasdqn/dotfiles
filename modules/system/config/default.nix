{config, pkgs, ...}:

{
  nix = {
    package = pkgs.nixFlakes;
    settings = {
      auto-optimise-store = true;
      substituters = [
        "https://cache.nixos.org/"
        "https://cache.komunix.org/"
      ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '';
  };
}
