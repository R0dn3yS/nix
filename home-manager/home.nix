{
  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "rodney";
    homeDirectory = "/home/rodney";
    stateVersion = "24.05";
  };
}