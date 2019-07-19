{ nixpkgs ? import (fetchTarball "channel:nixpkgs-unstable") {} }:

let
  pythonPackages = import ./packages;
in {
  python27 = nixpkgs.python27.override {
    packageOverrides = pythonPackages;
  };
  python37 = nixpkgs.python37.override {
    packageOverrides = pythonPackages;
  };
}