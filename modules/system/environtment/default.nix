{ config, ... }:

{
  environment.variables = {
    PATH="$HOME/.npm-packages/bin:$PATH";
    NIXOS_CONFIG_DIR = "$HOME/.config/dotfiles";
    XDG_DATA_HOME = "$HOME/.local/share";
    PASSWORD_STORE_DIR = "$HOME/.local/share/password-store";
    GTK_RC_FILES = "$HOME/.local/share/gtk-1.0/gtkrc";
    GTK2_RC_FILES = "$HOME/.local/share/gtk-2.0/gtkrc";
    MOZ_ENABLE_WAYLAND = "1";
    EDITOR = "nvim";
    DIRENV_LOG_FORMAT = "";
    ANKI_WAYLAND = "1";
    DISABLE_QT5_COMPAT = "0";
    #GDK_SCALE=2;
    #XCURSOR_SIZE=48;
  };
}
