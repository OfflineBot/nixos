{ config, pkgs, lib, ... }:
{
    # themes folder

    home.activation.copyKittyConfig = pkgs.lib.mkAfter ''
        mkdir -p ${config.home.homeDirectory}/.config/themes
        cp -r ${../src/themes}/* ~/.config/themes
    '';

    # themes manager
    home.file."Apps/tm.sh".source = ../src/theme_manager/tm.sh;
    home.activation.copyTm = pkgs.lib.mkAfter ''
        chmod +x ${config.home.homeDirectory}/Apps/tm.sh
    '';
}
