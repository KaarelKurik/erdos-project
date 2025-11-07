
# shell.nix
let
  # We pin to a specific nixpkgs commit for reproducibility.
  # Last updated: 2025-11-07. Check for new commits at https://status.nixos.org.
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/ffcdcf99d65c61956d882df249a9be53e5902ea5.tar.gz") {};
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      pandas
      requests
      jupyter
      matplotlib
      seaborn
      scipy
    ]))
  ];
}
