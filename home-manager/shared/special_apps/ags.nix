{ config, pkgs, x ? "none", ... }:
let
    homeManagerDir = "${config.home.homeDirectory}/System2/home-manager";
    agsConfig = if x == "laptop" then
        "${homeManagerDir}/shared/src/ags/ags_laptop"
    else
        "${homeManagerDir}/shared/src/ags/ags_pc";
in
{
    home.file.".config/ags".source = config.lib.file.mkOutOfStoreSymlink agsConfig;
}
