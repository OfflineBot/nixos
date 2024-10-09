{
    description = "Home Manager configuration of offlinebot";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ags.url = "github:Aylur/ags";
    };

    outputs = { home-manager, nixpkgs, ... }@inputs:
    let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
    in
    {
        homeConfigurations = {
            laptop = home-manager.lib.homeManagerConfiguration {
                pkgs = import nixpkgs { inherit system; };

                extraSpecialArgs = { inherit inputs; };

                modules = [ ./laptop/laptop.nix ];
            };
            pc = home-manager.lib.homeManagerConfiguration {
                pkgs = import nixpkgs { inherit system; };

                extraSpecialArgs = { inherit inputs; };

                modules = [ ./pc/pc.nix ];
        };
        };
    };
}
