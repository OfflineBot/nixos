{ config, pkgs, lib, ... }:
{
    home.file = {
        ".config/kitty/kitty.conf".source = config.lib.file.mkOutOfStoreSymlink config.home.homeDirectory/shared/src/kitty/kitty.conf;
        ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink config.home.homeDirectory/shared/src/neovim;
    }
}
