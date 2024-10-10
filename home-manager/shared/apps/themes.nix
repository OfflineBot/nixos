{ config, pkgs, ... }: 
let
    themesDir = ../src/themes;
in
{
    system.activationScripts.themesConfigFolder = ''
        mkdir -p ~/.config/themes
        cp -r ${themesDir}/* ~/.config/themes
    '';
}
