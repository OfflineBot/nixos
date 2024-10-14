{ lib, inputs, config, pkgs, ... }:
{

    imports = [ 
        inputs.ags.homeManagerModules.default 
    ];

    programs.ags = {
        enable = true;  # Enable AGS

        # Additional packages to add to gjs's runtime
        extraPackages = with pkgs; [
            gtksourceview
            webkitgtk
            accountsservice
        ];
    };

    #home.file.".config/ags".source = ../src/ags;

    home.activation.agsFolder = lib.mkAfter ''
        mkdir -p ~/.config/ags
        cp -r ${../src/ags}/* ~/.config/ags
        chmod -R 777 ~/.config/ags
    '';


}
