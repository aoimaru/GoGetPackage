[app/sources/269467802.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:3ba7607072f987fb1d0c7bc3732cfcac567278c44bc19af62ac76e86ca81b471" [label="/bin/sh -c apt update   && apt install -y --no-install-recommends      software-properties-common      ca-certificates      wget curl git python vim   && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:b0526b4aa1d7e3ab75c3574dc6b81988ae98f1c1fb3b9ce03071a3b9d2983f3a" [label="/bin/sh -c add-apt-repository ppa:bitcoin/bitcoin   && apt update   && apt install -y --no-install-recommends      build-essential libtool autotools-dev bsdmainutils      libevent-dev autoconf automake pkg-config libssl-dev      libdb4.8-dev libdb4.8++-dev      librsvg2-bin libtiff-tools bsdmainutils cmake imagemagick      libcap-dev libz-dev libbz2-dev python-setuptools   && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:fcb8dd9b6b0f50502326e23fb20981d4b6b64a9262dc42f464c91b6561b1867f" [label="/bin/sh -c apt update   && apt install -y --no-install-recommends      llvm   && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:7464c6e638dd64885aec492a4670cfe6bf740b29d80019bb07ef50c9e4ebb7e9" [label="/bin/sh -c mkdir -p $PROJECTDIR   && cd $PROJECTDIR   && wget -nv https://s3.us-east-2.amazonaws.com/devbuilds.blocknetprotocol.com/depends/depends-3.11.1-dev-mac.tar.gz   && [ \"$(printf '9bb4b8c092a3ced41f0ef636c0bb16ca10fa4f8a624b95c18800b9d7b4d096dd depends-3.11.1-dev-mac.tar.gz' | sha256sum -c)\" = \"depends-3.11.1-dev-mac.tar.gz: OK\" ] || $(echo \"depends checksum failed\"; exit 1)" shape="box"];
  "sha256:26d852490b22cc5c31b1ef5501e6b588fb26a35cfa55c6c09d440052b8933dee" [label="local://context" shape="ellipse"];
  "sha256:e9cc418ce861661a8442e6c1977ea1ea2722d30a2975c835c9f7c8034b188877" [label="copy{src=/, dest=/opt/blocknetdx/BlockDX/}" shape="note"];
  "sha256:b56e698fb74d187d700e252ef2119829798a7e5f2a94448b5cc2d1d45fee2b86" [label="/bin/sh -c mkdir -p $DISTDIR   && cd $PROJECTDIR   && rm -r $BASEPREFIX   && tar xzf depends-3.11.1-dev-mac.tar.gz   && chmod +x ./autogen.sh; sync   && ./autogen.sh   && CONFIG_SITE=$BASEPREFIX/$HOST/share/config.site ./configure CFLAGS=\"-g -O0\" CXXFLAGS=\"-g -O0\" --with-gui=qt5 --enable-debug --prefix=/   && make clean   && echo \"Building with cores: $ecores\"   && make -j$ecores   && mkdir -p $DISTDIR/bin && llvm-dsymutil-6.0 src/qt/blocknetdx-qt -o $DISTDIR/bin/blocknetdx-qt.dSYM   && make install DESTDIR=$DISTDIR   && make clean" shape="box"];
  "sha256:8b8a59b854acb9233cecd7dd8eeca850b9e4400e04661ddf5eed569cfac5226e" [label="mkdir{path=/opt/blocknetdx/dist}" shape="note"];
  "sha256:01f13c05707f9851c7b99bbf70703b0313d656d4297a336eb7309bcdc3452733" [label="sha256:01f13c05707f9851c7b99bbf70703b0313d656d4297a336eb7309bcdc3452733" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:3ba7607072f987fb1d0c7bc3732cfcac567278c44bc19af62ac76e86ca81b471" [label=""];
  "sha256:3ba7607072f987fb1d0c7bc3732cfcac567278c44bc19af62ac76e86ca81b471" -> "sha256:b0526b4aa1d7e3ab75c3574dc6b81988ae98f1c1fb3b9ce03071a3b9d2983f3a" [label=""];
  "sha256:b0526b4aa1d7e3ab75c3574dc6b81988ae98f1c1fb3b9ce03071a3b9d2983f3a" -> "sha256:fcb8dd9b6b0f50502326e23fb20981d4b6b64a9262dc42f464c91b6561b1867f" [label=""];
  "sha256:fcb8dd9b6b0f50502326e23fb20981d4b6b64a9262dc42f464c91b6561b1867f" -> "sha256:7464c6e638dd64885aec492a4670cfe6bf740b29d80019bb07ef50c9e4ebb7e9" [label=""];
  "sha256:7464c6e638dd64885aec492a4670cfe6bf740b29d80019bb07ef50c9e4ebb7e9" -> "sha256:e9cc418ce861661a8442e6c1977ea1ea2722d30a2975c835c9f7c8034b188877" [label=""];
  "sha256:26d852490b22cc5c31b1ef5501e6b588fb26a35cfa55c6c09d440052b8933dee" -> "sha256:e9cc418ce861661a8442e6c1977ea1ea2722d30a2975c835c9f7c8034b188877" [label=""];
  "sha256:e9cc418ce861661a8442e6c1977ea1ea2722d30a2975c835c9f7c8034b188877" -> "sha256:b56e698fb74d187d700e252ef2119829798a7e5f2a94448b5cc2d1d45fee2b86" [label=""];
  "sha256:b56e698fb74d187d700e252ef2119829798a7e5f2a94448b5cc2d1d45fee2b86" -> "sha256:8b8a59b854acb9233cecd7dd8eeca850b9e4400e04661ddf5eed569cfac5226e" [label=""];
  "sha256:8b8a59b854acb9233cecd7dd8eeca850b9e4400e04661ddf5eed569cfac5226e" -> "sha256:01f13c05707f9851c7b99bbf70703b0313d656d4297a336eb7309bcdc3452733" [label=""];
}

