{ pkgs, ... }:
{
    system.activationScripts.sddmThemeSymlink = ''
        mkdir -p /usr/share/sddm/themes
        ln -sfn ${./src} /usr/share/sddm/themes/sddm-sugar-candy
    '';

    services.displayManager.sddm = {
        enable = true;
        theme = "/usr/share/sddm/themes/sddm-sugar-candy";
    };
}

