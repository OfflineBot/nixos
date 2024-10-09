{ config, pkgs, inputs, ... }:
{
    home.username = "offlinebot";
    home.homeDirectory = "/home/offlinebot";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "24.05"; # Please read the comment before ch
    nixpkgs.config.permittedInsecurePackages = [
        "electron-25.9.0"
    ];

    home.sessionVariables = {
        EDITOR = "nvim";
    };

    programs.home-manager.enable = true;
}
