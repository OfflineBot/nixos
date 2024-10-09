{ pkgs, ... }:
{
    users.users.offlinebot = {
        isNormalUser = true;
        description = "OfflineBot";
        extraGroups = [ "networkmanager" "wheel" "input" "video"];
        packages = with pkgs; [ ];
    };
}
