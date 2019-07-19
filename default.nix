{ nixpkgs ? import (fetchTarball "channel:nixpkgs-unstable") {} }:

let
  pythonPackages = import ./packages;
in {
  # Python interpreters that extend the Nixpkgs set with our packages
  python27 = nixpkgs.python27.override {
    packageOverrides = pythonPackages;
  };
  python37 = nixpkgs.python37.override {
    packageOverrides = pythonPackages;
  };
}