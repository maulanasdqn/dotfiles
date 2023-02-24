{ config, ... }:
{
   programs.git = {
    enable = true;
    userName  = "Maulana Sodiqin";
    userEmail = "maulanasdqn@gmail.com";
    extraConfig = {
       init = { defaultBranch = "main"; };
       core = {
          excludesfile = "$NIXOS_CONFIG_DIR/scripts/gitignore";
       };
     };
   };
}
