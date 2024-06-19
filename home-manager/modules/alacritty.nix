{
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.7;

      font = {
        size = 13.0;
        normal = {
          family = "JetBrains Mono";
          style = "Bold";
        };
      };

      colors.primary.background = "#000000";
      colors.primary.foreground = "#e1bfff";

      colors.normal = {
        "black"   = "#0d0d0d";
        "red"     = "#FF301B";
        "green"   = "#A0E521";
        "yellow"  = "#FFC620";
        "blue"    = "#1BA6FA";
        "magenta" = "#8763B8";
        "cyan"    = "#21DEEF";
        "white"   = "#EBEBEB";
      };

      colors.bright = {
        "black"   = "#6D7070";
        "red"     = "#FF4352";
        "green"   = "#B8E466";
        "yellow"  = "#FFD750";
        "blue"    = "#1BA6FA";
        "magenta" = "#A578EA";
        "cyan"    = "#73FBF1";
        "white"   = "#FEFEF8";
      };
    };
  };
}