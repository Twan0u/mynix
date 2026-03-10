# MyNix - Configuration NixOS

Configuration NixOS personnelle avec flake pour une installation reproductible. Utilise home-manager pour gérer la config utilisateur.

## Prérequis

- NixOS installé avec flakes activés.
- Accès à GitHub pour cloner le repo.

## Installation

1. Clone le repo :
   ```bash
   git clone https://github.com/Twan0u/mynix.git
   cd mynix
   ```

2. Rebuild le système :
   ```bash
   sudo nixos-rebuild switch --flake .
   ```

   Ou depuis GitHub (pour une installation fraîche) :
   ```bash
   sudo nixos-rebuild switch --flake github:Twan0u/mynix
   ```

## Structure

- `flake.nix` : Définition du flake Nix avec home-manager.
- `configuration.nix` : Configuration principale du système.
- `home.nix` : Configuration utilisateur via home-manager.
- `hardware-configuration.nix` : Configuration matérielle (générée automatiquement).
- `custom/` : Modules personnalisés (développeur, monitoring).

## Personnalisation

- Modifie `configuration.nix` pour ajuster la config système.
- Modifie `home.nix` pour la config utilisateur (packages, programmes).
- Ajoute des modules dans `custom/` pour des fonctionnalités spécifiques.

## Rebuild

Après modification :
```bash
sudo nixos-rebuild switch --flake .
```

## Licence

MIT
