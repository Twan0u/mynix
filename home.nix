{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    # Ajoute d'autres packages utilisateur ici
  ];

  # Exemple de config home-manager
  programs.git = {
    enable = true;
    userName = "Antoine";
    userEmail = "ant.lamb.al@gmail.com";
  };

  home.stateVersion = "25.11";
}