{ nixpkgs }:

with (import nixpkgs {});

let 
  jobs = {
    test = stdenv.mkDerivation {
      name = "testDerivation";
      src = ./.;
      phases = "unpackPhase buildPhase";
      buildPhase = ''
        cp README.md $out
      '';
    };
  };
in jobs
