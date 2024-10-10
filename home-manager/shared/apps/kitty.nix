{ config, pkgs, ... }: 
{
    programs.kitty.enable = true;
    home.file.".config/kitty".source = pkgs.lib.mkForce {
        source = ../src/kitty;
        recursive = true;
    };
}
