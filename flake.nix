{
  description = "my nixos flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      
      specialArgs = { inherit inputs; };

      modules = [
        {nixpkgs.overlays = [inputs.hyprpanel.overlay];}

        ./modules/system/configuration.nix

	# home manager setup
        home-manager.nixosModules.home-manager {
          home-manager.extraSpecialArgs = {
	    inherit inputs;
	  };
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;

	  home-manager.users.doe = import ./modules/home-manager/home.nix;
        
        }

      ];
    };
  };
}
