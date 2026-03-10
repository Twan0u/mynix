# monitoring.nix
{ config, pkgs, ... }:

{
  # Installation des packages nécessaires
  environment.systemPackages = with pkgs; [
    btop
    neofetch
  ];

}
