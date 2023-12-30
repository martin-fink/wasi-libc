# source https://nixos.wiki/wiki/LLVM
with import <nixpkgs> {};
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
