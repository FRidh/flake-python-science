{
  edition = 201909;

  description = "A package set with science-related Python packages";

  inputs.nixpkgs.url = "nixpkgs/nixos-20.03";

  outputs = { self, nixpkgs}: rec {
    packages = import ./. { nixpkgs = nixpkgs.legacyPackages; };
  };
}