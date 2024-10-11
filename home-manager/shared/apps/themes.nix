{ config, pkgs, lib, ... }:
{
    # themes folder

    home.activation.copyKittyConfig = pkgs.lib.mkAfter ''
        mkdir -p ${config.home.homeDirectory}/.config/themes
        cp -r ${../src/themes}/* ~/.config/themes
    '';

    # themes manager
    home.activation.copyTm = pkgs.lib.mkAfter ''
        mkdir ${config.home.homeDirectory}/Apps
        cp ${../src/theme_manager/tm.sh} ~/Apps/tm.sh
        chmod +x ~/Apps/tm.sh
    '';
}
