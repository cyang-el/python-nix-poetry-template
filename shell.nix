{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    pkgs.bash
    pkgs.gnumake
    pkgs.python3
    pkgs.poetry
  ];
}
