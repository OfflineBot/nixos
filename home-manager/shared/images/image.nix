{ pkgs, ... }: 
{
    home.file."Pictures/active_wallpaper" = {
        source = ../src/active_wallpaper;
    };
}
