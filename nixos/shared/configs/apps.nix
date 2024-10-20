{ pkgs, ... }:
{
    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; 
        dedicatedServer.openFirewall = true; 
        localNetworkGameTransfers.openFirewall = true; 
    };

    services.flatpak.enable = true;

    programs.firefox.enable = true;

    environment.systemPackages = with pkgs; [
        neovim vim
        kitty
        discord
        git
        wayland
        breeze-gtk
        btop
        bash
        libsForQt5.qt5.qtquickcontrols2
        libsForQt5.qt5.qtgraphicaleffects
        xorg.xrandr
        #pipewire
        xdg-desktop-portal
        xdg-desktop-portal-wlr
        gnome-themes-extra
    ];

}
