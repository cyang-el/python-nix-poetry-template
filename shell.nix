{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    pkgs.bash
    pkgs.gnumake
    pkgs.python3
    pkgs.poetry
    pkgs.mypy
    pkgs.python38Packages.flake8
    pkgs.python38Packages.pre-commit
  ];
}
