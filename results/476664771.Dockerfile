[app/sources/476664771.Dockerfile]
digraph {
  "sha256:18b979bc2ad3d1930bf7e527388663f91b5b7809d65452ec73ddc487b0a3535f" [label="docker-image://docker.io/coinvault/client-base:latest" shape="ellipse"];
  "sha256:c7474c9f2d17c83fe8656b4032a2767f9059257cb7dc3138557c02eb206f7333" [label="/bin/sh -c apt-get update \t&& apt-get install -y git \t&& apt-get install -y build-essential libtool autotools-dev automake \t&& apt-get install -y pkg-config libssl-dev libevent-dev bsdmainutils \t&& apt-get install -y libboost-all-dev" shape="box"];
  "sha256:2eb0936032d2bbd9b7be1ec06b95d23cec08e618c1161b6983f742af58112893" [label="/bin/sh -c apt-get update        && cd ~        && git clone https://github.com/namecoin/namecoin-core.git namecoin" shape="box"];
  "sha256:56ca6368446bf9fc99c50e75de1c02bdd0cae184e1377b4e3f2247e15f104bde" [label="/bin/sh -c cd ~/namecoin \t&& ./autogen.sh \t&& ./configure --disable-wallet --without-gui --without-miniupnpc \t&& make" shape="box"];
  "sha256:6064ef389fabb11bd4468204346c3845238a393d453011cc945b07c66aef127a" [label="/bin/sh -c cd ~/namecoin/src     && strip namecoind     && install -m 755 namecoind /usr/local/bin" shape="box"];
  "sha256:df7b458f1c7788781c84a9e3a63d533a4d8518531a80e7d55d84399d2bece254" [label="/bin/sh -c mkdir /root/.namecoin/" shape="box"];
  "sha256:705975377a25347ee74dc44a931a0962246e9332af3733bcb70f6b4bebb74849" [label="local://context" shape="ellipse"];
  "sha256:d8276e9bc93e6ac36adb8fd094a723fbc87080b66f0f32e975c9ed9a9a4cc3b6" [label="copy{src=/namecoin.conf, dest=/root/.namecoin/}" shape="note"];
  "sha256:489bb6da4c007f4094b0739579134ef374b81b782c1527235456b98a621ad2e1" [label="mkdir{path=/usr/local/bin}" shape="note"];
  "sha256:4a6d80311288d9548cf8ba96dbbd79c4dabfc98714671c21d2899014a96416ea" [label="sha256:4a6d80311288d9548cf8ba96dbbd79c4dabfc98714671c21d2899014a96416ea" shape="plaintext"];
  "sha256:18b979bc2ad3d1930bf7e527388663f91b5b7809d65452ec73ddc487b0a3535f" -> "sha256:c7474c9f2d17c83fe8656b4032a2767f9059257cb7dc3138557c02eb206f7333" [label=""];
  "sha256:c7474c9f2d17c83fe8656b4032a2767f9059257cb7dc3138557c02eb206f7333" -> "sha256:2eb0936032d2bbd9b7be1ec06b95d23cec08e618c1161b6983f742af58112893" [label=""];
  "sha256:2eb0936032d2bbd9b7be1ec06b95d23cec08e618c1161b6983f742af58112893" -> "sha256:56ca6368446bf9fc99c50e75de1c02bdd0cae184e1377b4e3f2247e15f104bde" [label=""];
  "sha256:56ca6368446bf9fc99c50e75de1c02bdd0cae184e1377b4e3f2247e15f104bde" -> "sha256:6064ef389fabb11bd4468204346c3845238a393d453011cc945b07c66aef127a" [label=""];
  "sha256:6064ef389fabb11bd4468204346c3845238a393d453011cc945b07c66aef127a" -> "sha256:df7b458f1c7788781c84a9e3a63d533a4d8518531a80e7d55d84399d2bece254" [label=""];
  "sha256:df7b458f1c7788781c84a9e3a63d533a4d8518531a80e7d55d84399d2bece254" -> "sha256:d8276e9bc93e6ac36adb8fd094a723fbc87080b66f0f32e975c9ed9a9a4cc3b6" [label=""];
  "sha256:705975377a25347ee74dc44a931a0962246e9332af3733bcb70f6b4bebb74849" -> "sha256:d8276e9bc93e6ac36adb8fd094a723fbc87080b66f0f32e975c9ed9a9a4cc3b6" [label=""];
  "sha256:d8276e9bc93e6ac36adb8fd094a723fbc87080b66f0f32e975c9ed9a9a4cc3b6" -> "sha256:489bb6da4c007f4094b0739579134ef374b81b782c1527235456b98a621ad2e1" [label=""];
  "sha256:489bb6da4c007f4094b0739579134ef374b81b782c1527235456b98a621ad2e1" -> "sha256:4a6d80311288d9548cf8ba96dbbd79c4dabfc98714671c21d2899014a96416ea" [label=""];
}

