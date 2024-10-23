{ config, pkgs, x ? "none", ... }:
let
    homeManagerDir = "${config.home.homeDirectory}/System2/home-manager";
    hyprConfig = if x == "laptop" then
        "${homeManagerDir}/shared/src/hypr/hypr_laptop"
    else
        "${homeManagerDir}/shared/src/hypr/hypr_pc";
in
{
    home.file.".config/hypr".source = hyprConfig;
}
