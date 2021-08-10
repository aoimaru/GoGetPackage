[app/sources/303478292.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:7717d0057c0999c822acbe5436b1b0664902b4c1a3dc41b9096c9cda7b42a4ff" [label="/bin/sh -c apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends install     automake     build-essential     ca-certificates     git     python-software-properties     pkg-config     software-properties-common     sudo   && apt-add-repository -y \"ppa:hvr/ghc\"   && apt-get autoremove -y --purge && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8a55e3ac9463b895f5c821f4bd4220672ba580922803643fd1e3fe799c90b92a" [label="/bin/sh -c apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends install     libbz2-dev     libfftw3-dev     libgmp-dev     liblapack-dev     libncurses-dev     libncursesw5-dev     libpq-dev     libsqlite3-dev     libssl-dev     lzma-dev     zlib1g-dev   && apt-get autoremove -y --purge && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bb37bc21f9e533060b6991381b01cb80261c4d859832d3b8111b6643222dc9ab" [label="/bin/sh -c adduser haskellci --gecos \"Haskell CI builds\" --disabled-password" shape="box"];
  "sha256:6913a16c720c4033f46cc9716f882cd9632bca8ae650916e6e4572a7b2aa29c3" [label="/bin/sh -c echo \"haskellci ALL = NOPASSWD : ALL\" > /etc/sudoers.d/ghc" shape="box"];
  "sha256:54568eac4daa40d69c32a4b04070440efc314f52f6284638f373f53f65cafee0" [label="mkdir{path=/home/haskellci}" shape="note"];
  "sha256:58d57a39ae29a5fade3d1e510160b88bcf8ed38224e85e5136d0e56011e9379b" [label="/bin/sh -c sudo apt-get -yq update && sudo apt-get -yq --no-install-suggests --no-install-recommends install     cabal-install-2.4   && sudo apt-get autoremove -y --purge && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/* && rm -rf /home/haskellci/.cabal/packages" shape="box"];
  "sha256:e4b9f214c1fe21ca349ec838150314d8aba873006fc969f6f06d1fc8688250f3" [label="/bin/sh -c /opt/ghc/bin/cabal v2-update   && mv /home/haskellci/.cabal/packages/hackage.haskell.org/01-index.tar.gz /home/haskellci/01-index.tar.gz   && rm -rf /home/haskellci/.cabal   && mkdir -p /home/haskellci/.cabal/packages/hackage.haskell.org   && mv /home/haskellci/01-index.tar.gz /home/haskellci/.cabal/packages/hackage.haskell.org/01-index.tar.gz" shape="box"];
  "sha256:c4cf11cdde2a171dd8ac612c6c78e997d408645e2622c9e54552abae17acb74e" [label="/bin/sh -c sudo apt-get -yq update && sudo apt-get -yq --no-install-suggests --no-install-recommends install     ghc-7.4.2   && sudo apt-get autoremove -y --purge && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1f7f0878150e0519bb8a0eb6b28834649a37a2ddaf5f3e170fff24551a79d190" [label="sha256:1f7f0878150e0519bb8a0eb6b28834649a37a2ddaf5f3e170fff24551a79d190" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:7717d0057c0999c822acbe5436b1b0664902b4c1a3dc41b9096c9cda7b42a4ff" [label=""];
  "sha256:7717d0057c0999c822acbe5436b1b0664902b4c1a3dc41b9096c9cda7b42a4ff" -> "sha256:8a55e3ac9463b895f5c821f4bd4220672ba580922803643fd1e3fe799c90b92a" [label=""];
  "sha256:8a55e3ac9463b895f5c821f4bd4220672ba580922803643fd1e3fe799c90b92a" -> "sha256:bb37bc21f9e533060b6991381b01cb80261c4d859832d3b8111b6643222dc9ab" [label=""];
  "sha256:bb37bc21f9e533060b6991381b01cb80261c4d859832d3b8111b6643222dc9ab" -> "sha256:6913a16c720c4033f46cc9716f882cd9632bca8ae650916e6e4572a7b2aa29c3" [label=""];
  "sha256:6913a16c720c4033f46cc9716f882cd9632bca8ae650916e6e4572a7b2aa29c3" -> "sha256:54568eac4daa40d69c32a4b04070440efc314f52f6284638f373f53f65cafee0" [label=""];
  "sha256:54568eac4daa40d69c32a4b04070440efc314f52f6284638f373f53f65cafee0" -> "sha256:58d57a39ae29a5fade3d1e510160b88bcf8ed38224e85e5136d0e56011e9379b" [label=""];
  "sha256:58d57a39ae29a5fade3d1e510160b88bcf8ed38224e85e5136d0e56011e9379b" -> "sha256:e4b9f214c1fe21ca349ec838150314d8aba873006fc969f6f06d1fc8688250f3" [label=""];
  "sha256:e4b9f214c1fe21ca349ec838150314d8aba873006fc969f6f06d1fc8688250f3" -> "sha256:c4cf11cdde2a171dd8ac612c6c78e997d408645e2622c9e54552abae17acb74e" [label=""];
  "sha256:c4cf11cdde2a171dd8ac612c6c78e997d408645e2622c9e54552abae17acb74e" -> "sha256:1f7f0878150e0519bb8a0eb6b28834649a37a2ddaf5f3e170fff24551a79d190" [label=""];
}

