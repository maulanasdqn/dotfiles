{ config, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      esbenp.prettier-vscode
      dbaeumer.vscode-eslint
      yzhang.markdown-all-in-one
    ];

  };
}
