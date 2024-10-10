{ config, pkgs, ... }: 
{
    home.file.".config/nvim".source = ../src/neovim;
}
