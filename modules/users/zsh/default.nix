
{ config, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "intheloop";
    };
    initExtra = ''
      export PATH=~/.npm-packages/bin:$PATH
      export PATH=~/.grader/bin:$PATH
      export NODE_PATH=~/.npm-packages/lib/node_modules
      export CHROME_EXECUTABLE=/etc/profiles/per-user/ms/bin/google-chrome-stable
      source ~/.config/dotfiles/modules/users/zsh/z.sh
      eval "$(starship init zsh)"
    '';
    shellAliases = {
      update = "sudo nix flake update ~/.config/dotfiles";
      build = "sudo nixos-rebuild switch -p nix --flake ~/.config/dotfiles/#beast";
      clean = "sudo nix-collect-garbage -d";
      ls = "lsd";
      lsa = "lsd -a";
      ll = "lsd -l";
      c = "clear";
      v = "nvim";
      t = "tmux";
    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };
}
