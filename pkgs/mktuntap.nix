{ stdenv, fetchgit }:

stdenv.mkDerivation {
  pname = "mktuntap";
  version = "1.0";

  src = fetchgit {
    url = "https://spectrum-os.org/git/mktuntap";
    sha256 = "sha256-kKn6p9uY5GHV/bLakuCC1WR2BO/M/4xrAdqoeT9EcfU=";
  };

  makeFlags = [ "prefix=${placeholder "out"}" ];
}
