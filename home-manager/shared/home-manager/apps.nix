{ pkgs, ... }: 
{
    home.packages = with pkgs; [
        # basic
        ranger
        wine
        slurp
        grim
        tree
        openssh
        gh
        unzip
        alsa-utils
        font-awesome
        pavucontrol brightnessctl
        killall
        fastfetch
        fzf
        vim
        neovim
        wallust
        webcord
        libreoffice-qt6-fresh
        cloc

        # programming
        gcc
        python3
        rustc cargo rust-analyzer
        nodejs
        clang-tools
        gjs 
        glib
        lua
        lua-language-server

        # latex
        zathura
        texlab
        texliveFull

        # launcher
        lutris
        steam
        nwg-look
        tor-browser
        alacritty
        gimp
        gparted
        whatsapp-for-linux

        # wm - hyprland
        swaylock-effects
        swww
        xclip wl-clipboard

        #wm - gnome
        gnomeExtensions.gnome-40-ui-improvements
        gnomeExtensions.just-perfection
        gnomeExtensions.app-icons-taskbar
        gnomeExtensions.blur-my-shell
        gnomeExtensions.hide-top-bar

        # fonts
        nerdfonts

    ];
}
