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
    steam
    nheko
    
    # Coding stuff
    gnumake
    gcc
    nodejs
    vscode
    python
    (python3.withPackages (ps: with ps; [ requests ]))
    deno
    rustc
    cargo 

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
    viu
    ani-cli
    appimage-run

    # GUI utils
    fastfetch
    dmenu

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist
    swaylock

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

    # Screenshotting
    grim
    grimblast
    slurp
    swappy

    # Other
    home-manager
    jdk
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    liberation_ttf
    meslo-lgs-nf
    cascadia-code
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
