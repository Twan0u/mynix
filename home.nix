{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    # Ajoute d'autres packages utilisateur ici
  ];

  programs.git = {
    enable = true;
    settings = {
      user.name = "Antoine";
      user.email = "ant.lamb.al@gmail.com";
    };
  };

  home.stateVersion = "25.11";
}