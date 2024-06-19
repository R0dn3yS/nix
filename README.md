# R0dn3yS NixOS Config

```bash
git clone https://github.com/R0dn3yS/nix

cp ./nix ~/nix -R
cd ~/nix

# Generate hardware config
nixos-generate-config --show-hardware-config > nixos/hardware-configuration.nix

# Install flake
NIX_CONFIG="experimental-features = nix-command flakes"
sudo nixos-rebuild switch --flake ~/nix/#tinasha
home-manager switch --flake ~/nix
```