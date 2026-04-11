{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Python
    uv                  # project manager: replaces pip/poetry/pyenv

    # TypeScript / Node
    nodePackages.typescript   # tsc
    pnpm                      # package manager

    # Rust extras
    cargo-watch         # cargo watch -x run / -x test
    cargo-expand        # macro expansion
    sccache             # compilation cache
  ];

  home.sessionVariables = {
    # sccache as rustc wrapper
    RUSTC_WRAPPER = "sccache";
  };
}
