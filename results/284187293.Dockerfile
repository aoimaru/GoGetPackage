[app/sources/284187293.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2e07aef2e7844c63bf2b117eb63bf25785a70c918002ef7b99c3e0d8187991f5" [label="/bin/sh -c apt update && apt install -y build-essential git vim libboost-all-dev pkg-config automake autoconf libtool libdb++-dev libssl-dev" shape="box"];
  "sha256:8a87914e7ff3792c64dad86cbe99a0bed4c8d5d554c474f5730a6ba8d1a7a252" [label="/bin/sh -c cd /usr/src && git clone https://github.com/Anoncoin/anoncoin.git" shape="box"];
  "sha256:fcfd092571be6af40fd72cafaf11028afb27b77ab27f518291cd6313f4e6093b" [label="/bin/sh -c cd /usr/src/anoncoin && ./autogen.sh && ./configure --prefix=/usr/local --without-qrencode --without-miniupnpc --with-gui=no                                 --disable-shared --enable-hardening --disable-tests --with-pic --with-incompatible-bdb" shape="box"];
  "sha256:a98757d893110b9049a6a579db1d1ecb4380981e825f41cb198ceb44f06f2830" [label="/bin/sh -c cd /usr/src/anoncoin && make -j4 && make install" shape="box"];
  "sha256:d203d2fa2035718170598fce6c0d1bc3682882d2fe20cba6eddbd62cc3102271" [label="/bin/sh -c apt remove -y automake autoconf git libtool build-essential && apt autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4c418424f5f8c778e087a4265a769e36fcba339b5a22195c25200e58d1aac324" [label="local://context" shape="ellipse"];
  "sha256:e5a943c4ced1ef2d426d2e5ece251af8e98937029a4ef3e2f673ef3b0b53e832" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3ee9752800eaddf75cec5a8d00323320d63ffacbdc7adcebbf07ce952d99d4b3" [label="/bin/sh -c chmod a+x /entrypoint.sh" shape="box"];
  "sha256:bd9797e11bbcfb314f7cfb6a0e476d6885975757c136ce043e9915bbf91b2965" [label="sha256:bd9797e11bbcfb314f7cfb6a0e476d6885975757c136ce043e9915bbf91b2965" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2e07aef2e7844c63bf2b117eb63bf25785a70c918002ef7b99c3e0d8187991f5" [label=""];
  "sha256:2e07aef2e7844c63bf2b117eb63bf25785a70c918002ef7b99c3e0d8187991f5" -> "sha256:8a87914e7ff3792c64dad86cbe99a0bed4c8d5d554c474f5730a6ba8d1a7a252" [label=""];
  "sha256:8a87914e7ff3792c64dad86cbe99a0bed4c8d5d554c474f5730a6ba8d1a7a252" -> "sha256:fcfd092571be6af40fd72cafaf11028afb27b77ab27f518291cd6313f4e6093b" [label=""];
  "sha256:fcfd092571be6af40fd72cafaf11028afb27b77ab27f518291cd6313f4e6093b" -> "sha256:a98757d893110b9049a6a579db1d1ecb4380981e825f41cb198ceb44f06f2830" [label=""];
  "sha256:a98757d893110b9049a6a579db1d1ecb4380981e825f41cb198ceb44f06f2830" -> "sha256:d203d2fa2035718170598fce6c0d1bc3682882d2fe20cba6eddbd62cc3102271" [label=""];
  "sha256:d203d2fa2035718170598fce6c0d1bc3682882d2fe20cba6eddbd62cc3102271" -> "sha256:e5a943c4ced1ef2d426d2e5ece251af8e98937029a4ef3e2f673ef3b0b53e832" [label=""];
  "sha256:4c418424f5f8c778e087a4265a769e36fcba339b5a22195c25200e58d1aac324" -> "sha256:e5a943c4ced1ef2d426d2e5ece251af8e98937029a4ef3e2f673ef3b0b53e832" [label=""];
  "sha256:e5a943c4ced1ef2d426d2e5ece251af8e98937029a4ef3e2f673ef3b0b53e832" -> "sha256:3ee9752800eaddf75cec5a8d00323320d63ffacbdc7adcebbf07ce952d99d4b3" [label=""];
  "sha256:3ee9752800eaddf75cec5a8d00323320d63ffacbdc7adcebbf07ce952d99d4b3" -> "sha256:bd9797e11bbcfb314f7cfb6a0e476d6885975757c136ce043e9915bbf91b2965" [label=""];
}

