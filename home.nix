{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    obsidian
    spotify
    git
    vscode
    btop
    neofetch
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