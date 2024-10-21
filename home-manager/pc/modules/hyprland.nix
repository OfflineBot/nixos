{ ... }:
{
    home.file.".config/hypr".source = ../src/hyprland;
    wayland.windowManager.hyprland.plugins = [
        inputs.hyprland-plugins.packages.${pkgs.system}.borders-plus-plus
    ];
}
