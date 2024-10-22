{ config, pkgs, lib, ... }:
let
    homeManagerDir = "${config.home.homeDirectory}/System2/home-manager";
in
{

    home.file = {
        ".config/kitty".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/kitty";
        ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/neovim";
        ".config/swaylock".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/swaylock";
        ".config/zathura".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/zathura";
        ".bashrc".source = config.lib.file.mkOutOfStoreSymlink "${homeManagerDir}/shared/src/bashrc/.bashrc";
    };
}
