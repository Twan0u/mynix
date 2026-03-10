# monitoring.nix
{ config, pkgs, ... }:

{
  # Installer htop
  environment.systemPackages = with pkgs; [
    git
    vscode
  ];

  # Vous pouvez aussi activer des services de monitoring comme collectd, si nécessaire
  # services.collectd.enable = true;
}
