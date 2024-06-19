{ pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "python-2.7.18.8" ];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    firefox
    rofi
    wofi
    vesktop
    pcmanfm
    polymc
    wezterm
    alacritty
    
    # Coding stuff
    gnumake
    gcc
    nodejs
    vscode
    python
    (python3.withPackages (ps: with ps; [ requests ]))

    # CLI utils
    fastfetch
    file
    tree
    wget
    git
    btop
    unzip
    ffmpeg
    light
    zip
    yt-dlp
    brightnessctl
    openssl
    bluez
    bluez-tools
    lf
    micro
    swww

    # GUI utils
    fastfetch
    dmenu

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # WMs
    hyprland
    seatd
    waybar
    sddm
    xdg-desktop-portal-hyprland

    # Sound
    pipewire
    pavucontrol
    helvum
    pamixer

    # GPU stuff
    amdvlk

    # Screenshotting
    grim
    grimblast
    slurp
    swappy

    # Other
    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
