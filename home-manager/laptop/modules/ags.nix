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

    home.file.".config/ags".source = ../src/ags2;
}
