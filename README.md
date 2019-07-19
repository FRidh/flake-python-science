# `flake-python-science`

This repository contains a flake with Python packages related to scientic
computing.

## Getting started

Add the flake to your local registry:

    nix flake add python-science github:FRidh/flake-python-science

The flake is now included in the list of registered flakes with the name `python-science`:

    nix flake list

To see which version is registered:

    nix flake info python-science

Let's now use a package:

    nix run python-science:python37.pkgs.zarr

Unfortunately this does not do much for us, because it's a Python package, and
we want to use it in an environment. Typically we would write then something like

    nix run "(with import (fetchTarball "channel:nixpkgs-unstable" {}; python37.withPackages(ps: with ps; [ numpy]))"

What to do now?