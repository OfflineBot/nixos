{ pkgs, ... }:
{
    environment.etc."sddm/themes/sddm-sugar-candy" = {

        source = ./src; # not working yet
        mode = "0755";

    };

    services.displayManager.sddm = {
        enable = true;
        theme = "/usr/share/sddm/themes/sddm-sugar-candy";
    };
    services.xserver.displayManager.setupCommands = ''
             xrandr --output HDMI-A-1 --auto --pos -1920x230 \
                --output DP-3 --auto --pos 0x0 \
                --output DP-2 --auto --pos 1920x330
    '';

}
