{ pkgs ? import <nixpkgs> {}
  , poetry2nix ? pkgs.poetry2nix
}:

let
    app = poetry2nix.mkPoetryApplication {
        projectDir = ./.;
    };
in app.dependencyEnv
