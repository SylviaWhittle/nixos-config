{
  description = "my nixos flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
    nvchad4nix = {
      url = "github:nix-community/nix4nvchad";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
  let
	system = "x86_64-linux";
	pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };

      modules = [
        {nixpkgs.overlays = [
	  inputs.hyprpanel.overlay
	  (final: prev: {
	    nvchad = inputs.nvchad4nix.packages."${pkgs.system}".nvchad;
	  })
	];}

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
