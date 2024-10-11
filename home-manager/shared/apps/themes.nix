{ config, pkgs, lib, ... }:
{
    # themes folder

    home.activation.copyKittyConfig = pkgs.lib.mkAfter ''
        mkdir -p ${config.home.homeDirectory}/.config/themes
        cp -r ${../src/themes}/* ~/.config/themes
    '';

    home.file."Apps/tm.sh".source = ../src/theme_manager/tm.sh;
}
