{
  description = "MyNix - NixOS configuration with flakes and home-manager";

  # Input sources
  inputs = {
    # Main NixOS package repository - pinned to 25.11 release
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    
    # Home-manager for declarative user environment configuration
    # Follows nixpkgs to ensure consistency across system and user packages
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Flake outputs - defines the NixOS configuration
  outputs = { self, nixpkgs, home-manager }: {
    # NixOS system configuration
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        # Core system configuration
        ./configuration.nix
        
        # Home-manager integration
        home-manager.nixosModules.home-manager
        {
          # Use system nixpkgs for home-manager packages
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          # Import user-specific configuration from home.nix
          home-manager.users.antoine = import ./home.nix;
        }
      ];
    };
  };
}
