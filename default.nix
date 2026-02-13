with (import <nixpkgs> {}); let
  env = bundlerEnv {
    name = "YourJekyllSite";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in
  stdenv.mkDerivation {
    name = "YourJekyllSite";
    buildInputs = [env ruby];

    shellHook = ''
      exec ${env}/bin/jekyll serve --watch
    '';
  }

