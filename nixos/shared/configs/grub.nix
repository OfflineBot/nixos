{ ... }:
{

    boot.loader.grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        useOSProber = true;
    };
    boot.supportedFilesystems = [ "ntfs" ];

}
