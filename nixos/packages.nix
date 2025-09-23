{ pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [
    # rofi
    # wikiman
    awesome
    btop
    cargo
    dolphin
    dunst
    fd
    firefox
    fzf
    gcc
    gh
    gnumake
    home-manager
    hyprland
    hyprpaper
    icu
    kitty
    lazygit
    lua-language-server
    marksman
    neofetch
    neovim
    nix-search-tv
    nodejs_24
    nomacs-qt6
    pavucontrol
    python3
    ripgrep
    rofi-wayland
    stylua
    telegram-desktop
    texliveFull
    tldr
    unzip
    waybar
    wayland
    wget
    wl-clipboard
    yazi
    zathura
  ];
  services = {
    flatpak = {
      enable = true;

      # List the Flatpak applications you want to install
      # Use the official Flatpak application ID (e.g., from flathub.org)
      # Examples:
      packages = [
        "app.zen_browser.zen"
        "com.github.tchx84.Flatseal" # Manage flatpak permissions - should always have this
        #"com.rtosta.zapzap"              # WhatsApp client
        #"io.github.flattool.Warehouse"   # Manage flatpaks, clean data, remove flatpaks and deps
        #"it.mijorus.gearlever"           # Manage and support AppImages
        #"io.github.freedoom.Phase1"      #  Classic Doom FPS 1
        #"io.github.freedoom.Phase2"      #  Classic Doom FPS 2
        #"io.github.dvlv.boxbuddyrs"      #  Manage distroboxes
        #"de.schmidhuberj.tubefeeder"     #watch YT videos

        # Add other Flatpak IDs here, e.g., "org.mozilla.firefox"
      ];

      # Optional: Automatically update Flatpaks when you run nixos-rebuild swit ch
      update.onActivation = true;
    };
  };
}
