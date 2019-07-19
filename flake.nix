{
  name = "python-science";

  edition = 201906;

  description = "A package set with science-related Python packages";

  inputs = [ "nixpkgs" ];

  outputs = inputs: rec {
    packages = import ./. { nixpkgs = inputs.nixpkgs.legacyPackages; };
  };
}