{ config, pkgs, lib, ... }:
{
    pkgs.runCommand "create-config-dir" {
        output = "${pkgs.stdenv.mkTemp}";

        installPhase = ''
            mkdir -p ~/.config/themes
        '';
    }
