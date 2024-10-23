{ config, pkgs, ... }:
let 
    x = "laptop";
in
{

    imports = [ 
        ../shared/default.nix
        ./modules/default.nix
        (import ../shared/special_apps/hyprland.nix { inherit config pkgs x; })
    ];

}

