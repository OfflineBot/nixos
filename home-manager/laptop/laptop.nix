{ config, pkgs, lib, inputs, ... }:
let 
    x = "laptop";
in
{

    imports = [ 
        ../shared/default.nix
        #./modules/default.nix
        (import ../shared/special_apps/hyprland2.nix { inherit config pkgs x; })
        (import ../shared/special_apps/ags.nix { inherit config lib inputs pkgs x; })
    ];

}

