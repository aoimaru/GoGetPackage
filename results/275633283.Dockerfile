[app/sources/275633283.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:e0e9b8112d889b0f979c71e0bb0ae62c377f912cb8cc7c4bb4baef020600b4fe" [label="/bin/sh -c echo 'deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' > /etc/apt/sources.list.d/ghc.list" shape="box"];
  "sha256:56fbe6a78807db925c3ce81082b0edf2bc4286997b6b4014ac6f0a6300fa1fd0" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286" shape="box"];
  "sha256:2427cc92d5712c3f1d0bf5365360fddf4eea6449fd2fa561404700bb580d9f70" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:3bde9f9dcccf8730061d9ddb556f48ba094f65efdeef36e0b250e4d929a6232a" [label="/bin/sh -c apt-get install -qy cabal-install-2.2 ghc-8.4.2 happy alex zlib1g-dev     libtinfo-dev libsqlite3-0 libsqlite3-dev ca-certificates g++ git curl     git make automake autoconf gcc perl python3 texinfo xz-utils lbzip2     patch openssh-client sudo" shape="box"];
  "sha256:bf3966428bab469126930ccf034368f95553fd9cbc68120ee19a6eff9c86f0f1" [label="/bin/sh -c apt-get install -qy python3-sphinx texlive-xetex texlive-latex-extra" shape="box"];
  "sha256:eab12deb82216aefbc4cd1a8afb2d5698e2231934f809b153203b73b0260ca37" [label="/bin/sh -c curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.6.5/stack-1.6.5-linux-x86_64-static.tar.gz -o stack.tar.gz" shape="box"];
  "sha256:151ec67ef4da65c516139c296ab0209313f34b4fa96b5409d00e3d2dc868f8a1" [label="/bin/sh -c curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.6.5/stack-1.6.5-linux-x86_64-static.tar.gz.asc -o stack.tar.gz.asc" shape="box"];
  "sha256:56c7683fa65b7a64cd00e12c095c23993852c19d493ed66b8bb2ef78cbe43870" [label="/bin/sh -c export GNUPGHOME=\"$(mktemp -d)\"" shape="box"];
  "sha256:3e8079672d6ecace0a8d7ef8667ce08a4e3e7f1d98e27c34c8c5349b8b5eee31" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442" shape="box"];
  "sha256:db62f71e286f4a1a0f9f60e58df4252b14d91c5554eeee264f484178d7d8051a" [label="/bin/sh -c gpg --batch --verify stack.tar.gz.asc stack.tar.gz" shape="box"];
  "sha256:e158007dbe218fedcfb5eb942d1400d67a91b58d3a6c7bbbc84bec2d8d65ce71" [label="/bin/sh -c tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1" shape="box"];
  "sha256:259db694f44a01f8830f7c55abb8f550af90b3e78af4f51625722eec335261fd" [label="/bin/sh -c /usr/local/bin/stack config set system-ghc --global true" shape="box"];
  "sha256:15c38c14610b3004423e4502bc11e410d3d09d5467335bb48688920a6cf035f4" [label="/bin/sh -c rm -rf \"$GNUPGHOME\" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz" shape="box"];
  "sha256:29d4b53f681e8711fe1b88a307dfd820e0fe6278c72aca55d9141a91e7b013be" [label="/bin/sh -c adduser ghc --gecos \"GHC builds\" --disabled-password" shape="box"];
  "sha256:61eda11909c5a2e5d9a12888a0cb23631359a4913e30fc2be3c9306f14443c39" [label="/bin/sh -c echo \"ghc ALL = NOPASSWD : ALL\" > /etc/sudoers.d/ghc" shape="box"];
  "sha256:88c5dde594d46107913469f97b74a042338cad52ac575a96efc9bd489b898ec6" [label="mkdir{path=/home/ghc}" shape="note"];
  "sha256:f36eccb927a2a07d7807761a27ab8fc8b0ab8f9c7f80123034fde6ad8ab4f0ac" [label="sha256:f36eccb927a2a07d7807761a27ab8fc8b0ab8f9c7f80123034fde6ad8ab4f0ac" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:e0e9b8112d889b0f979c71e0bb0ae62c377f912cb8cc7c4bb4baef020600b4fe" [label=""];
  "sha256:e0e9b8112d889b0f979c71e0bb0ae62c377f912cb8cc7c4bb4baef020600b4fe" -> "sha256:56fbe6a78807db925c3ce81082b0edf2bc4286997b6b4014ac6f0a6300fa1fd0" [label=""];
  "sha256:56fbe6a78807db925c3ce81082b0edf2bc4286997b6b4014ac6f0a6300fa1fd0" -> "sha256:2427cc92d5712c3f1d0bf5365360fddf4eea6449fd2fa561404700bb580d9f70" [label=""];
  "sha256:2427cc92d5712c3f1d0bf5365360fddf4eea6449fd2fa561404700bb580d9f70" -> "sha256:3bde9f9dcccf8730061d9ddb556f48ba094f65efdeef36e0b250e4d929a6232a" [label=""];
  "sha256:3bde9f9dcccf8730061d9ddb556f48ba094f65efdeef36e0b250e4d929a6232a" -> "sha256:bf3966428bab469126930ccf034368f95553fd9cbc68120ee19a6eff9c86f0f1" [label=""];
  "sha256:bf3966428bab469126930ccf034368f95553fd9cbc68120ee19a6eff9c86f0f1" -> "sha256:eab12deb82216aefbc4cd1a8afb2d5698e2231934f809b153203b73b0260ca37" [label=""];
  "sha256:eab12deb82216aefbc4cd1a8afb2d5698e2231934f809b153203b73b0260ca37" -> "sha256:151ec67ef4da65c516139c296ab0209313f34b4fa96b5409d00e3d2dc868f8a1" [label=""];
  "sha256:151ec67ef4da65c516139c296ab0209313f34b4fa96b5409d00e3d2dc868f8a1" -> "sha256:56c7683fa65b7a64cd00e12c095c23993852c19d493ed66b8bb2ef78cbe43870" [label=""];
  "sha256:56c7683fa65b7a64cd00e12c095c23993852c19d493ed66b8bb2ef78cbe43870" -> "sha256:3e8079672d6ecace0a8d7ef8667ce08a4e3e7f1d98e27c34c8c5349b8b5eee31" [label=""];
  "sha256:3e8079672d6ecace0a8d7ef8667ce08a4e3e7f1d98e27c34c8c5349b8b5eee31" -> "sha256:db62f71e286f4a1a0f9f60e58df4252b14d91c5554eeee264f484178d7d8051a" [label=""];
  "sha256:db62f71e286f4a1a0f9f60e58df4252b14d91c5554eeee264f484178d7d8051a" -> "sha256:e158007dbe218fedcfb5eb942d1400d67a91b58d3a6c7bbbc84bec2d8d65ce71" [label=""];
  "sha256:e158007dbe218fedcfb5eb942d1400d67a91b58d3a6c7bbbc84bec2d8d65ce71" -> "sha256:259db694f44a01f8830f7c55abb8f550af90b3e78af4f51625722eec335261fd" [label=""];
  "sha256:259db694f44a01f8830f7c55abb8f550af90b3e78af4f51625722eec335261fd" -> "sha256:15c38c14610b3004423e4502bc11e410d3d09d5467335bb48688920a6cf035f4" [label=""];
  "sha256:15c38c14610b3004423e4502bc11e410d3d09d5467335bb48688920a6cf035f4" -> "sha256:29d4b53f681e8711fe1b88a307dfd820e0fe6278c72aca55d9141a91e7b013be" [label=""];
  "sha256:29d4b53f681e8711fe1b88a307dfd820e0fe6278c72aca55d9141a91e7b013be" -> "sha256:61eda11909c5a2e5d9a12888a0cb23631359a4913e30fc2be3c9306f14443c39" [label=""];
  "sha256:61eda11909c5a2e5d9a12888a0cb23631359a4913e30fc2be3c9306f14443c39" -> "sha256:88c5dde594d46107913469f97b74a042338cad52ac575a96efc9bd489b898ec6" [label=""];
  "sha256:88c5dde594d46107913469f97b74a042338cad52ac575a96efc9bd489b898ec6" -> "sha256:f36eccb927a2a07d7807761a27ab8fc8b0ab8f9c7f80123034fde6ad8ab4f0ac" [label=""];
}

