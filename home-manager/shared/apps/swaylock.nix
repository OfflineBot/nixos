{ config, pkgs, ... }: 
{
    home.file.".config/swaylock".source = ../src/swaylock;
}
