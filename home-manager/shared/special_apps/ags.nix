{ config, lib, inputs, pkgs, x ? "none", ... }:
let
    homeManagerDir = "${config.home.homeDirectory}/System2/home-manager";
    agsConfig = if x == "laptop" then
        "${homeManagerDir}/shared/src/ags/ags_laptop"
    else
        "${homeManagerDir}/shared/src/ags/ags_pc";
in
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

    home.file.".config/ags".source = config.lib.file.mkOutOfStoreSymlink agsConfig;
}
