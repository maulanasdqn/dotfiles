{ config, pkgs, ... }:
{
  programs.zsh = {
     enable = true;
     enableCompletion = true;
     autosuggestions.enable = true;
     syntaxHighlighting.enable = true;
     ohMyZsh = {
       enable = true;
       plugins = [ "git" ];
       theme = "awesomepanda";
     };
   };
  users.defaultUserShell = pkgs.zsh;
}
