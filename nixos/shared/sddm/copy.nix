{ stdenv }:
{
  sddm-theme-dialog = stdenv.mkDerivation rec {
    pname = "sddm-theme-dialog";
    version = "local";  # You can specify any version since it's local
    dontBuild = true;

    installPhase = ''
      mkdir -p $out/share/sddm/themes
      cp -aR $src/* $out/share/sddm/themes/sddm-theme-dialog
    '';

    # Use the local source directory
    src = ./src;  # Reference to the local `src` directory
  };
}
