{ config, pkgs, ... }: 
{
    home.file.".config/zathura".source = ../src/zathura;
}
