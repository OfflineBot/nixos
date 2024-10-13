{
    description = "NixOS main configuration";

    inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    outputs = inputs@{ self, nixpkgs, ... }:
    let
        system = "x86_64-linux";

        pkgs = import inputs.nixpkgs {
            inherit system;

            config = {
                allowUnfree = true;
                allowBroken = true;
            };

            # Fix GNOME xdg-desktop-portal
            # Ref: https://github.com/NixOS/nixpkgs/pull/345979
            # Once this is merged, I shouldn't need this.
            overlays = [
                (final: prev: {
                 xdg-desktop-portal-gtk = prev.xdg-desktop-portal-gtk.overrideAttrs
                 (old: {
                  buildInputs = [
                  prev.glib
                  prev.gtk3
                  prev.xdg-desktop-portal
                  prev.xdg-desktop-portal-wlr
                  prev.gsettings-desktop-schemas # settings exposed by settings portal
                  prev.gnome-desktop
                  prev.gnome-settings-daemon # schemas needed for settings api (mostly useless now that fonts were moved to g-d-s, just mouse and xsettings)
                  ];
                  mesonFlags = [ ];
                  });
                 })
            ];
        };
    in {
        nixosConfigurations.pc = nixpkgs.lib.nixosSystem {
            inherit system pkgs;
            modules = [ 
                ./pc/pc.nix
            ];
        };
        nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
            inherit system pkgs;
            modules = [
                ./laptop/laptop.nix
            ];
        };
    };
}
