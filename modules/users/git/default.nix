{
  programs.git = {
    enable = true;
    userName = "Maulana Sodiqin";
    userEmail = "maulanasdqn@gmail.com";
    extraConfig = {
      init = { defaultBranch = "main"; };
      push = { autoSetupRemote = true; };
      core = { excludesfile = "$NIXOS_CONFIG_DIR/scripts/gitignore"; };
    };
  };
}
