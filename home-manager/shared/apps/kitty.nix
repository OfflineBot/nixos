{ config, pkgs, lib, ... }: 
{
    #programs.kitty.enable = true;
    home.file.".config/kitty/" = {
        source = config.lib.file.mkOutOfStoreSymlink ../src/kitty;
    };

}
