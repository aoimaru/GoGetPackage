[app/sources/462830351.Dockerfile]
digraph {
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" [label="docker-image://docker.io/phusion/baseimage:0.9.19" shape="ellipse"];
  "sha256:7c351d5c9c5d4ff8fd6ce97d87d5911caaef55e1e457bd14ff039b0f15a00a03" [label="local://context" shape="ellipse"];
  "sha256:e5587998daec9094ac5aad70bcdd02eb584ddd779b9a33796edd0e299e816b43" [label="copy{src=/, dest=/bitshares-core}" shape="note"];
  "sha256:ee30fc2aac53d7901a3de7575889f8887a8ca0bbab905cec07ff439ddb550931" [label="mkdir{path=/bitshares-core}" shape="note"];
  "sha256:155d1b14ef3be8c29f31a69f7710e59bf9890099b47fbe92152d8bfbbe49f1d3" [label="/bin/sh -c apt-get update -y &&     apt-get install -y       g++       autoconf       cmake       git       libbz2-dev       libreadline-dev       libboost-all-dev       libcurl4-openssl-dev       libssl-dev       libncurses-dev       doxygen       libcurl4-openssl-dev       fish &&     echo && echo '------ Obtain version ------' &&     mkdir -v  /etc/bitshares /var/lib/bitshares &&     git submodule update --init --recursive &&     git rev-parse --short HEAD > /etc/bitshares/version &&     echo && echo '------ Default exec/config files ------' &&     cp -fv docker/default_config.ini /var/lib/bitshares/config.ini &&     cp -fv docker/bitsharesentry.sh /usr/local/bin/bitsharesentry.sh &&     chmod -v a+x /usr/local/bin/bitsharesentry.sh &&     echo && echo '------ Compile ------' &&     cmake        -DCMAKE_BUILD_TYPE=Release       . &&     make karma &&     make install &&     cd / &&     rm -rf /bitshares-core &&     apt-get autoremove -y --purge g++ gcc autoconf cmake libboost-all-dev doxygen &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3bfa8fcfa2e5e01a718293290b94024b4b3d297101224eb678a60ebb1521303d" [label="sha256:3bfa8fcfa2e5e01a718293290b94024b4b3d297101224eb678a60ebb1521303d" shape="plaintext"];
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" -> "sha256:e5587998daec9094ac5aad70bcdd02eb584ddd779b9a33796edd0e299e816b43" [label=""];
  "sha256:7c351d5c9c5d4ff8fd6ce97d87d5911caaef55e1e457bd14ff039b0f15a00a03" -> "sha256:e5587998daec9094ac5aad70bcdd02eb584ddd779b9a33796edd0e299e816b43" [label=""];
  "sha256:e5587998daec9094ac5aad70bcdd02eb584ddd779b9a33796edd0e299e816b43" -> "sha256:ee30fc2aac53d7901a3de7575889f8887a8ca0bbab905cec07ff439ddb550931" [label=""];
  "sha256:ee30fc2aac53d7901a3de7575889f8887a8ca0bbab905cec07ff439ddb550931" -> "sha256:155d1b14ef3be8c29f31a69f7710e59bf9890099b47fbe92152d8bfbbe49f1d3" [label=""];
  "sha256:155d1b14ef3be8c29f31a69f7710e59bf9890099b47fbe92152d8bfbbe49f1d3" -> "sha256:3bfa8fcfa2e5e01a718293290b94024b4b3d297101224eb678a60ebb1521303d" [label=""];
}

