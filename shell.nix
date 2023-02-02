# source https://nixos.wiki/wiki/LLVM
{ pkgs ? import (fetchTarball "https://github.com/PBHDK/nixpkgs/archive/2eac0c6990719e80fd56d89b1f48e7a5bf59b843.tar.gz") { }
}:
let
in
pkgs.llvmPackages_latest.stdenv.mkDerivation {
  name = "llvm-debug-env";
  nativeBuildInputs = [
    pkgs.bashInteractive
    pkgs.ccache
    pkgs.gdb
    pkgs.cmake
  ];
  buildInputs = [ ];
  hardeningDisable = [ "all" ];
}
