{ config, pkgs, ... }:
let 
    x = "pc";
in
{
    imports = [ 
        ../shared/default.nix
        ./modules/default.nix
        (import ../shared/special_apps/hyprland2.nix { inherit config pkgs x; })
    ];
}
