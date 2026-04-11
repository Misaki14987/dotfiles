{ pkgs, claude-code, ... }:

{
  home.packages = with pkgs; [
    vivaldi
    vivaldi-ffmpeg-codecs
    yazi
    qq
    claude-code.packages.${pkgs.system}.default
    rime-data
    vscode
    remmina
    # Screenshot tool for Hyprland
    hyprshot
    grim
    slurp
    wl-clipboard
    # Wallpaper + color scheme
    awww
    wallust
    waybar
    nerd-fonts.jetbrains-mono
    python3

    # Neovim dependencies (for LazyVim)
    neovim
    # Telescope / fuzzy finder
    ripgrep
    fd
    fzf
    # LazyVim extras
    lazygit
    # LSP / formatters / linters
    lua-language-server
    stylua
    nil # Nix LSP
    nixfmt-rfc-style
    typescript-language-server
    prettierd
    vscode-langservers-extracted # html/css/json/eslint
    pyright
    ruff
    taplo # TOML
    yaml-language-server
    markdownlint-cli2
    shellcheck
    shfmt
    # Build tools needed by some plugins
    gnumake
    nodejs
    unzip
    curl
    wget
    tree-sitter
    gh
  ];
}
