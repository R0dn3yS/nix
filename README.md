# R0dn3yS NixOS Config

```bash
git clone https://github.com/R0dn3yS/nix

cp ./nix ~/nix -R

sudo nixos-rebuild switch --flake ~/nix
home-manager switch --flake ~/nix
```