{ pkgs, ... }:
{
    services.displayManager.sddm = {
        enable = true;
        theme = "/usr/share/sddm/themes/sddm-sugar-candy";
    };
}

