# A set of packages. This is typically passed in as packageOverrides to a Python interpreter.

self: super: {
  asciitree = super.callPackage ./asciitree { };
  numcodecs = super.callPackage ./numcodecs { };
  zarr = super.callPackage ./zarr { };
}