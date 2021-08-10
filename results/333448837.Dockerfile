[app/sources/333448837.Dockerfile]
digraph {
  "sha256:964778f247e3f246ff8f92a8ffbb6506b528c572ca870fd6456f48bbc9d4ce51" [label="local://context" shape="ellipse"];
  "sha256:d6b5015d977117b7160a0c81a8083db83ae3a6aa7e114b71d7a891bb5648c4ad" [label="docker-image://docker.io/library/buildpack-deps:stretch-scm" shape="ellipse"];
  "sha256:c045b2877d5e306253159f900b06c2d2ee329e916e0cca0fee7119ab5be430bd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends apt apt-transport-https curl wget apt-utils" shape="box"];
  "sha256:7b0fe115e91bdb1bbddaec026615afc9df7089aa53bed58a0a52b9533d3ee747" [label="/bin/sh -c wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list &&     apt-get update && apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring" shape="box"];
  "sha256:32cf92b7b9b0e4e0bdd75559c8fcc233051d67d7f9b5827fd0e6aec07e44b6a7" [label="/bin/sh -c curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - &&     curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list &&     sed -i /etc/apt/sources.list.d/dart_stable.list -e 's/https:/http:/g'" shape="box"];
  "sha256:5d246e796066c308979125fe42c52151bff8d8af50f79bd2f2927662e445bb0b" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash" shape="box"];
  "sha256:b762d70a5f067c148884feb29e55e292915c57b5a863f4e063316ec5f1cb0a65" [label="/bin/sh -c apt-get install -y --no-install-recommends `# General dependencies`       bash-completion       bison       build-essential       clang       cmake       debhelper       flex       gdb       ninja-build       pkg-config       valgrind       vim" shape="box"];
  "sha256:eff634b1d5f674faea90c2af7c0bd6c2204bb1958552c002b056bcf30c2896df" [label="/bin/sh -c apt-get install -y --no-install-recommends `# C++ dependencies`       libboost-dev       libboost-filesystem-dev       libboost-program-options-dev       libboost-system-dev       libboost-test-dev       libboost-thread-dev       libevent-dev       libssl-dev       qt5-default       qtbase5-dev       qtbase5-dev-tools" shape="box"];
  "sha256:26053e830d9f198362cdf1165dfe8a5d5ec1a31682a62067780e2ecfdc81d71d" [label="/bin/sh -c apt-get install -y --no-install-recommends `# csharp (mono) dependencies`       mono-devel" shape="box"];
  "sha256:e024e593309447f0c420377321880971ab67f5944456941679c747ab52c92a3a" [label="/bin/sh -c apt-get install -y --no-install-recommends `# D dependencies`       dmd-bin       libevent-dev       libssl-dev       xdg-utils" shape="box"];
  "sha256:f8952f0513c70551dc2d3d1ec5f5156ff8e7cddf57a905035aa448708a31c9c9" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Dart dependencies`       dart" shape="box"];
  "sha256:18487a38dd7e3cf4b16ccc5bdef3d86f8b39e417a3168ccb2b147cd4291d172f" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Erlang dependencies`       erlang-base       erlang-eunit       erlang-dev       erlang-tools       rebar" shape="box"];
  "sha256:35ff2802442b85f28c9fd49efb65a091a1e34d2bb75f074156c645328523f21f" [label="/bin/sh -c apt-get install -y --no-install-recommends `# GlibC dependencies`       libglib2.0-dev" shape="box"];
  "sha256:77f5b6cb6cb5a3b7f4b37e1868c63d5d9987388f79024bad4e92593aabbc5369" [label="/bin/sh -c apt-get install -y --no-install-recommends `# golang (go) dependencies`       golang-go" shape="box"];
  "sha256:d415b43a460c64d8359926ef629a866bd254a10b4b18f92aed424879dcfe18a8" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Haskell dependencies`       ghc       cabal-install" shape="box"];
  "sha256:15c92cefd89b8080ee0533e828d9e001c93dedcad24b63c25739310ea80b9ec7" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Haxe dependencies`       haxe       neko       neko-dev" shape="box"];
  "sha256:53702fb98a5a6b29226c273587187d9c5d872abc332afa97421fbaa6559f4a3d" [label="/bin/sh -c haxelib setup --always /usr/share/haxe/lib &&     haxelib install --always hxcpp" shape="box"];
  "sha256:b8e9d8cddc3fc2f6f4b2658d6930aca963e19ea5f3f7055f411864a7a4950f61" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Java dependencies`       ant       ant-optional       openjdk-8-jdk       maven" shape="box"];
  "sha256:dc4c0f9a9cd1168a165877744e3f74c2ce682e13a7f07f1aac5d20accd92db1e" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Lua dependencies`       lua5.2       lua5.2-dev" shape="box"];
  "sha256:04166644d8443a36f65048ce652901810847a7b171d6eb213440abdf5fd3bae4" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Node.js dependencies`       nodejs" shape="box"];
  "sha256:1428a1035c0eaf35ffccf51b55fc7a0c4b2051a4623ff5b5d4ee67eecfc5e4a6" [label="/bin/sh -c apt-get install -y --no-install-recommends `# OCaml dependencies`       ocaml       opam &&     opam init --yes &&     opam install --yes oasis" shape="box"];
  "sha256:628128f9f31d4441e3c0ce3360880a1d15267e753ab718108d64070659d98e19" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Perl dependencies`       libbit-vector-perl       libclass-accessor-class-perl       libcrypt-ssleay-perl       libio-socket-ssl-perl       libnet-ssleay-perl" shape="box"];
  "sha256:da9c33299dd6e1842fc2a7e411486fe986f0f299e0ed91bcf827b0d6920a7f64" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Php dependencies`       php7.0       php7.0-cli       php7.0-dev       php-pear       re2c       phpunit" shape="box"];
  "sha256:7617fe2e0879c56e5742709109d58114457a702e2eb97a8d373a6457e0d8438e" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Python dependencies`       python-all       python-all-dbg       python-all-dev       python-backports.ssl-match-hostname       python-ipaddress       python-pip       python-setuptools       python-six       python-tornado       python-twisted       python-wheel       python-zope.interface       python3-all       python3-all-dbg       python3-all-dev       python3-setuptools       python3-six       python3-tornado       python3-twisted       python3-wheel       python3-zope.interface &&     pip install --upgrade backports.ssl_match_hostname" shape="box"];
  "sha256:99acb772de819a18c3bc55fff1101664a714e6d85ac084f8f4d9160734c7a529" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Ruby dependencies`       ruby       ruby-dev       ruby-bundler" shape="box"];
  "sha256:13c7b9c2d17fb79ef86e0efe7d735dd0e210fbbb55fd27a0250e5a2ee62e678a" [label="/bin/sh -c gem install bundler --no-ri --no-rdoc" shape="box"];
  "sha256:344e52659b2d9cdb6eeda415169bda7141ba53d7d7415d6a33d5f3d297ffbf1e" [label="/bin/sh -c apt-get install -y --no-install-recommends `# Rust dependencies`       rustc" shape="box"];
  "sha256:33876d3cc500119429a9caa7ad904fda662244c35723134ad3bd8d4d19e649f7" [label="/bin/sh -c apt-get dist-upgrade -y" shape="box"];
  "sha256:e533d52c270468b7e76eb3a87fb1ebf3c934889d4ca0dd0ff2cf047758fc1b32" [label="/bin/sh -c rm -rf /var/cache/apt/* &&     rm -rf /var/lib/apt/lists/* &&     rm -rf /tmp/* &&     rm -rf /var/tmp/*" shape="box"];
  "sha256:07a10f28841c930f68e449d647c48df57f9eb40b784ac4c9aea829bd801e6c89" [label="/bin/sh -c mkdir -p $THRIFT_ROOT/src" shape="box"];
  "sha256:bf2581840b40714700e72834c287632293e5a9119f667481c6ea1ebd17b1cc28" [label="copy{src=/Dockerfile, dest=/thrift/}" shape="note"];
  "sha256:c7f4413ddf92766ceac7de97f547889da4f34d88c1c60404415f447da5d653c6" [label="mkdir{path=/thrift/src}" shape="note"];
  "sha256:f006d4aa026ff708891ef155360ea254b1dbbccd8d80c289276dccff5757572d" [label="sha256:f006d4aa026ff708891ef155360ea254b1dbbccd8d80c289276dccff5757572d" shape="plaintext"];
  "sha256:d6b5015d977117b7160a0c81a8083db83ae3a6aa7e114b71d7a891bb5648c4ad" -> "sha256:c045b2877d5e306253159f900b06c2d2ee329e916e0cca0fee7119ab5be430bd" [label=""];
  "sha256:c045b2877d5e306253159f900b06c2d2ee329e916e0cca0fee7119ab5be430bd" -> "sha256:7b0fe115e91bdb1bbddaec026615afc9df7089aa53bed58a0a52b9533d3ee747" [label=""];
  "sha256:7b0fe115e91bdb1bbddaec026615afc9df7089aa53bed58a0a52b9533d3ee747" -> "sha256:32cf92b7b9b0e4e0bdd75559c8fcc233051d67d7f9b5827fd0e6aec07e44b6a7" [label=""];
  "sha256:32cf92b7b9b0e4e0bdd75559c8fcc233051d67d7f9b5827fd0e6aec07e44b6a7" -> "sha256:5d246e796066c308979125fe42c52151bff8d8af50f79bd2f2927662e445bb0b" [label=""];
  "sha256:5d246e796066c308979125fe42c52151bff8d8af50f79bd2f2927662e445bb0b" -> "sha256:b762d70a5f067c148884feb29e55e292915c57b5a863f4e063316ec5f1cb0a65" [label=""];
  "sha256:b762d70a5f067c148884feb29e55e292915c57b5a863f4e063316ec5f1cb0a65" -> "sha256:eff634b1d5f674faea90c2af7c0bd6c2204bb1958552c002b056bcf30c2896df" [label=""];
  "sha256:eff634b1d5f674faea90c2af7c0bd6c2204bb1958552c002b056bcf30c2896df" -> "sha256:26053e830d9f198362cdf1165dfe8a5d5ec1a31682a62067780e2ecfdc81d71d" [label=""];
  "sha256:26053e830d9f198362cdf1165dfe8a5d5ec1a31682a62067780e2ecfdc81d71d" -> "sha256:e024e593309447f0c420377321880971ab67f5944456941679c747ab52c92a3a" [label=""];
  "sha256:e024e593309447f0c420377321880971ab67f5944456941679c747ab52c92a3a" -> "sha256:f8952f0513c70551dc2d3d1ec5f5156ff8e7cddf57a905035aa448708a31c9c9" [label=""];
  "sha256:f8952f0513c70551dc2d3d1ec5f5156ff8e7cddf57a905035aa448708a31c9c9" -> "sha256:18487a38dd7e3cf4b16ccc5bdef3d86f8b39e417a3168ccb2b147cd4291d172f" [label=""];
  "sha256:18487a38dd7e3cf4b16ccc5bdef3d86f8b39e417a3168ccb2b147cd4291d172f" -> "sha256:35ff2802442b85f28c9fd49efb65a091a1e34d2bb75f074156c645328523f21f" [label=""];
  "sha256:35ff2802442b85f28c9fd49efb65a091a1e34d2bb75f074156c645328523f21f" -> "sha256:77f5b6cb6cb5a3b7f4b37e1868c63d5d9987388f79024bad4e92593aabbc5369" [label=""];
  "sha256:77f5b6cb6cb5a3b7f4b37e1868c63d5d9987388f79024bad4e92593aabbc5369" -> "sha256:d415b43a460c64d8359926ef629a866bd254a10b4b18f92aed424879dcfe18a8" [label=""];
  "sha256:d415b43a460c64d8359926ef629a866bd254a10b4b18f92aed424879dcfe18a8" -> "sha256:15c92cefd89b8080ee0533e828d9e001c93dedcad24b63c25739310ea80b9ec7" [label=""];
  "sha256:15c92cefd89b8080ee0533e828d9e001c93dedcad24b63c25739310ea80b9ec7" -> "sha256:53702fb98a5a6b29226c273587187d9c5d872abc332afa97421fbaa6559f4a3d" [label=""];
  "sha256:53702fb98a5a6b29226c273587187d9c5d872abc332afa97421fbaa6559f4a3d" -> "sha256:b8e9d8cddc3fc2f6f4b2658d6930aca963e19ea5f3f7055f411864a7a4950f61" [label=""];
  "sha256:b8e9d8cddc3fc2f6f4b2658d6930aca963e19ea5f3f7055f411864a7a4950f61" -> "sha256:dc4c0f9a9cd1168a165877744e3f74c2ce682e13a7f07f1aac5d20accd92db1e" [label=""];
  "sha256:dc4c0f9a9cd1168a165877744e3f74c2ce682e13a7f07f1aac5d20accd92db1e" -> "sha256:04166644d8443a36f65048ce652901810847a7b171d6eb213440abdf5fd3bae4" [label=""];
  "sha256:04166644d8443a36f65048ce652901810847a7b171d6eb213440abdf5fd3bae4" -> "sha256:1428a1035c0eaf35ffccf51b55fc7a0c4b2051a4623ff5b5d4ee67eecfc5e4a6" [label=""];
  "sha256:1428a1035c0eaf35ffccf51b55fc7a0c4b2051a4623ff5b5d4ee67eecfc5e4a6" -> "sha256:628128f9f31d4441e3c0ce3360880a1d15267e753ab718108d64070659d98e19" [label=""];
  "sha256:628128f9f31d4441e3c0ce3360880a1d15267e753ab718108d64070659d98e19" -> "sha256:da9c33299dd6e1842fc2a7e411486fe986f0f299e0ed91bcf827b0d6920a7f64" [label=""];
  "sha256:da9c33299dd6e1842fc2a7e411486fe986f0f299e0ed91bcf827b0d6920a7f64" -> "sha256:7617fe2e0879c56e5742709109d58114457a702e2eb97a8d373a6457e0d8438e" [label=""];
  "sha256:7617fe2e0879c56e5742709109d58114457a702e2eb97a8d373a6457e0d8438e" -> "sha256:99acb772de819a18c3bc55fff1101664a714e6d85ac084f8f4d9160734c7a529" [label=""];
  "sha256:99acb772de819a18c3bc55fff1101664a714e6d85ac084f8f4d9160734c7a529" -> "sha256:13c7b9c2d17fb79ef86e0efe7d735dd0e210fbbb55fd27a0250e5a2ee62e678a" [label=""];
  "sha256:13c7b9c2d17fb79ef86e0efe7d735dd0e210fbbb55fd27a0250e5a2ee62e678a" -> "sha256:344e52659b2d9cdb6eeda415169bda7141ba53d7d7415d6a33d5f3d297ffbf1e" [label=""];
  "sha256:344e52659b2d9cdb6eeda415169bda7141ba53d7d7415d6a33d5f3d297ffbf1e" -> "sha256:33876d3cc500119429a9caa7ad904fda662244c35723134ad3bd8d4d19e649f7" [label=""];
  "sha256:33876d3cc500119429a9caa7ad904fda662244c35723134ad3bd8d4d19e649f7" -> "sha256:e533d52c270468b7e76eb3a87fb1ebf3c934889d4ca0dd0ff2cf047758fc1b32" [label=""];
  "sha256:e533d52c270468b7e76eb3a87fb1ebf3c934889d4ca0dd0ff2cf047758fc1b32" -> "sha256:07a10f28841c930f68e449d647c48df57f9eb40b784ac4c9aea829bd801e6c89" [label=""];
  "sha256:07a10f28841c930f68e449d647c48df57f9eb40b784ac4c9aea829bd801e6c89" -> "sha256:bf2581840b40714700e72834c287632293e5a9119f667481c6ea1ebd17b1cc28" [label=""];
  "sha256:964778f247e3f246ff8f92a8ffbb6506b528c572ca870fd6456f48bbc9d4ce51" -> "sha256:bf2581840b40714700e72834c287632293e5a9119f667481c6ea1ebd17b1cc28" [label=""];
  "sha256:bf2581840b40714700e72834c287632293e5a9119f667481c6ea1ebd17b1cc28" -> "sha256:c7f4413ddf92766ceac7de97f547889da4f34d88c1c60404415f447da5d653c6" [label=""];
  "sha256:c7f4413ddf92766ceac7de97f547889da4f34d88c1c60404415f447da5d653c6" -> "sha256:f006d4aa026ff708891ef155360ea254b1dbbccd8d80c289276dccff5757572d" [label=""];
}
