# monitoring.nix
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    vscode
  ];
}
