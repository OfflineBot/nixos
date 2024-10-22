{ config, ... }:
let 
    x = "pc";
in
{

    imports = [ 
        ../shared/default.nix
        ./modules/default.nix
        ../shared/apps/hyprland.nix
        (import ../shared/apps/hyprland.nix { inherit x; })
    ];

}
