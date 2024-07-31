{ config, pkgs, ...}: {
  services = {
    dbus.enable = true;
    openssh.enable = true;
    xserver.enable = true;
    displayManager.sddm.enable = true;
    gnome.gnome-keyring.enable = true;
  };
}
