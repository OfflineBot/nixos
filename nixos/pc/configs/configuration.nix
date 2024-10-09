{ inputs, config, pkgs, ... }:

{
    imports =
        [ # Include the results of the hardware scan.
        ./hardware-configuration.nix
        ];

    services.xserver.videoDrivers = ["nvidia"];
    hardware.nvidia.open = false;

    hardware.graphics.extraPackages = [ pkgs.nvidia-vaapi-driver ];

    hardware.nvidia.powerManagement.enable = true;

    boot.kernelParams = [ "nvidia-drm.modeset=1" ];

}
