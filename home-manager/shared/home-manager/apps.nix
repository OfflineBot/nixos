{ pkgs, ... }: 
{
    home.packages = with pkgs; [
        swaylock-effects
        ranger
        wine
        lutris
        slurp
        grim
        nwg-look
        vim
        tor-browser
        tree
        openssh
        gh
        unzip
        alsa-utils
        gcc
        python3
        rustc cargo rust-analyzer
        nodejs
        clang-tools
        zathura
        font-awesome
        nerdfonts
        alacritty
        swww
        pavucontrol brightnessctl
        killall
        gjs 
        glib
        fastfetch
        xclip wl-clipboard
        whatsapp-for-linux
        fzf
        gparted
        gimp
        lua
        lua-language-server
        texliveFull
    ];
}
