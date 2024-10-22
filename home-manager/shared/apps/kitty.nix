{ config, pkgs, lib, ... }: 
{
    programs.kitty.enable = true;
    home.file.".config/kitty/".source = ../src/kitty;
}
