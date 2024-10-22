{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    buildInputs = with pkgs; [
        python3
    ] ++ (with python3Packages; [
        pip
    ]);

    shellHook = ''
        export PS1="(shell) \[\033[0;34m\]\w> \[\033[0;37m\]"
    '';
}
