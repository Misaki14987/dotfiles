{ ... }:

{
  home.sessionPath = [ "$HOME/.local/bin" ];

  home.sessionVariables = {
    BROWSER = "vivaldi-stable";
    # Fcitx5 input method environment variables
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    SDL_IM_MODULE = "fcitx";
    GLFW_IM_MODULE = "ibus";
  };
}
