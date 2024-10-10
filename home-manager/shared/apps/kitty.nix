{ config, pkgs, ... }: 
{
    programs.kitty.enable = true;
    home.file.".config/kitty".source = ../src/kitty;
}
