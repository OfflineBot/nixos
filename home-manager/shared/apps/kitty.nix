{ config, pkgs, lib, ... }: 
{
    #home.file.".config/kitty/".source = config.lib.file.mkOutOfStoreSymlink ../src/kitty;
    home.file.".config/kitty/kitty.conf".source = config.lib.file.mkOutOfStoreSymlink /home/offlinebot/System2/home-manager/shared/src/kitty/kitty.conf;
}
