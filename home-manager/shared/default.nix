{ ... }: 
{
    imports = [
        ./home-manager/default.nix # IMPORTANT!

        ./apps/default.nix
        ./images/image.nix
    ];
}
