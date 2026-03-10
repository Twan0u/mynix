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

### Configuration des secrets (optionnel)

Si tu veux utiliser tes infos personnelles (git, etc.) sans les exposer sur GitHub :

1. Copie le fichier exemple :
   ```bash
   cp secrets.nix.example secrets.nix
   ```

2. Édite `secrets.nix` avec tes infos personnelles

3. Dans `home.nix`, remplace les valeurs par défaut par :
   ```nix
   let
     secrets = import ./secrets.nix;
   in
   { 
     # ... puis utilise secrets.gitUserName et secrets.gitUserEmail
   }
   ```

### Configuration du système

- Modifie `configuration.nix` pour ajuster la config système.
- Modifie `home.nix` pour la config utilisateur (packages, programmes).
- Ajoute des modules dans `custom/` pour des fonctionnalités spécifiques.

**Note** : `secrets.nix` est ignoré par git pour éviter d'exposer tes infos personnelles.

## Rebuild

Après modification :
```bash
sudo nixos-rebuild switch --flake .
```

## Licence

MIT
