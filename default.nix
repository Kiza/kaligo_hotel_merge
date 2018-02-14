with (import <nixpkgs> {});

let
  rubyenv = bundlerEnv {
    name = "rb";
    # Setup for ruby gems using bundix generated gemset.nix
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
    # Bundler groups available in this environment
    groups = ["default" "development" "test"];
  };
in stdenv.mkDerivation {
  name = "kaligo-hotel-merge";
  version = "0.0.1";
  src = fetchurl {
    url = https://github.com/Kiza/kaligo_hotel_merge/archive/0.0.2.tar.gz;
    sha256 = "3b85e93faa04947ba9f1846df2a88db73b60138c1d5cc166e017a6038f6625ca";
  };

  buildInputs = [
    stdenv
    git

    # Ruby deps
    ruby
    bundler
    bundix

    # Rails deps
    clang
    libxml2
    libxslt
    readline
    sqlite
    openssl

    rubyenv
  ];

  shellHook = ''
    export LIBXML2_DIR=${pkgs.libxml2}
    export LIBXSLT_DIR=${pkgs.libxslt}
  '';
  
  builder = ./build.sh;

  installPhase = ''
    mkdir -p $out/bin
    cp kaligo_hotel_merge $out/bin
  '';
}
