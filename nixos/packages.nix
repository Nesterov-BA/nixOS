{ pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [
    neovim
    marksman
    lua-language-server
    btop
    neofetch
    wl-clipboard
    dunst
    pavucontrol
    stylua
    wget
    gh
    nix-search-tv
    cargo
    unzip
    home-manager
    gcc
    nodejs_24
    ripgrep
    fd
    lazygit
    zathura
    texliveFull
    python3
    fzf
    # wikiman
    tldr
    kitty
    gnumake
    firefox
    hyprland
    icu
    wayland
    waybar
    yazi
    awesome
    # rofi
    rofi-wayland
  ];
}
