{ inputs, config, pkgs, ... }:
{
    imports = [ 
        ./hardware-configuration.nix
    ];

    services.xserver.videoDrivers = ["amdgpu"];
    hardware.graphics.enable = true;

    networking.networkmanager.wifi.powersave = false;

}
