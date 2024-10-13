{ ... }:
{

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    networking.hostName = "nixos"; # Define your hostname.


    systemd.services.xdg-desktop-portal-gtk = {
        wantedBy = [ "graphical-session.target" ];
    };

    networking.networkmanager.enable = true;

    time.timeZone = "Europe/Berlin";

    i18n.defaultLocale = "en_US.UTF-8";

    i18n.extraLocaleSettings = {
        LC_ADDRESS = "de_DE.UTF-8";
        LC_IDENTIFICATION = "de_DE.UTF-8";
        LC_MEASUREMENT = "de_DE.UTF-8";
        LC_MONETARY = "de_DE.UTF-8";
        LC_NAME = "de_DE.UTF-8";
        LC_NUMERIC = "de_DE.UTF-8";
        LC_PAPER = "de_DE.UTF-8";
        LC_TELEPHONE = "de_DE.UTF-8";
        LC_TIME = "de_DE.UTF-8";
    };

    services.xserver.enable = true;

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };
    
    services.xserver.desktopManager.gnome = {
        enable = true;
    };

    services.xserver.xkb = {
        layout = "de";
        variant = "";
    };

    console.keyMap = "de";

    services.printing.enable = true;

    system.stateVersion = "24.11";

}
