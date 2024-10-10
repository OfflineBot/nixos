{ config, pkgs, ... }: 
{
    system.activationScripts.sddmThemeSymlink = ''
        mkdir -p $out/.config/themes
        cp -r ${../src/themes}/* $out/.config/themes
    '';
}
