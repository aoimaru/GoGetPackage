[app/sources/376299910.Dockerfile]
digraph {
  "sha256:63c799021aadd09583f7c3eed925cb07acdc6bccc0098b6bc6df3dc80668ca12" [label="docker-image://docker.io/library/node:8-stretch" shape="ellipse"];
  "sha256:f55bc1e2d8469b96483c2fe9ae32e4d3e7e36eba00df5f095ad62a033da0ab5c" [label="/bin/sh -c apt-get update && apt-get install -y   bison   build-essential   curl   g++-multilib   gcc-multilib   git   gperf   libgnome-keyring-dev   libnotify-dev   libssl-dev   lsb-release   ninja-build   python-pip   sudo" shape="box"];
  "sha256:557df10561a68afa16ff2af5e1d4ef87fc3c28958916df7320e9202af3b5b2f6" [label="/bin/sh -c npm install -g node-gyp@3.3.1" shape="box"];
  "sha256:31c14a90b1163c54502c5b4f2f99611d04a460e38823e1cc50bd638baa4a8921" [label="/bin/sh -c pip install Jinja2==2.8.1" shape="box"];
  "sha256:6073d9dabe3bfc0dc90a807d380f2c6850266691b6b9eb943d347fb4fc41f3ac" [label="/bin/sh -c curl https://sh.rustup.rs -sSf | sh -s -- -y" shape="box"];
  "sha256:2aff33d2e32f1080a26c9d8246ce73ce38a1b9c153f006e67c1043d82c591270" [label="/bin/sh -c cargo install sccache" shape="box"];
  "sha256:9ea54d4ff19a5c79342caed47dd06f1e4d9099f8ce60ed7dfb8f04dea1de811e" [label="/bin/sh -c echo \"sccache = /root/.cargo/bin/sccache\" > /root/.npmrc" shape="box"];
  "sha256:4eadd3d667a96e80c41f0279633fbb851bde1e8540261868874c01d097163a06" [label="mkdir{path=/src}" shape="note"];
  "sha256:58c8b419dcde5be9c172d51c6e0dc7eb25e0b95c2e4bd566c5546d0dfd061af3" [label="sha256:58c8b419dcde5be9c172d51c6e0dc7eb25e0b95c2e4bd566c5546d0dfd061af3" shape="plaintext"];
  "sha256:63c799021aadd09583f7c3eed925cb07acdc6bccc0098b6bc6df3dc80668ca12" -> "sha256:f55bc1e2d8469b96483c2fe9ae32e4d3e7e36eba00df5f095ad62a033da0ab5c" [label=""];
  "sha256:f55bc1e2d8469b96483c2fe9ae32e4d3e7e36eba00df5f095ad62a033da0ab5c" -> "sha256:557df10561a68afa16ff2af5e1d4ef87fc3c28958916df7320e9202af3b5b2f6" [label=""];
  "sha256:557df10561a68afa16ff2af5e1d4ef87fc3c28958916df7320e9202af3b5b2f6" -> "sha256:31c14a90b1163c54502c5b4f2f99611d04a460e38823e1cc50bd638baa4a8921" [label=""];
  "sha256:31c14a90b1163c54502c5b4f2f99611d04a460e38823e1cc50bd638baa4a8921" -> "sha256:6073d9dabe3bfc0dc90a807d380f2c6850266691b6b9eb943d347fb4fc41f3ac" [label=""];
  "sha256:6073d9dabe3bfc0dc90a807d380f2c6850266691b6b9eb943d347fb4fc41f3ac" -> "sha256:2aff33d2e32f1080a26c9d8246ce73ce38a1b9c153f006e67c1043d82c591270" [label=""];
  "sha256:2aff33d2e32f1080a26c9d8246ce73ce38a1b9c153f006e67c1043d82c591270" -> "sha256:9ea54d4ff19a5c79342caed47dd06f1e4d9099f8ce60ed7dfb8f04dea1de811e" [label=""];
  "sha256:9ea54d4ff19a5c79342caed47dd06f1e4d9099f8ce60ed7dfb8f04dea1de811e" -> "sha256:4eadd3d667a96e80c41f0279633fbb851bde1e8540261868874c01d097163a06" [label=""];
  "sha256:4eadd3d667a96e80c41f0279633fbb851bde1e8540261868874c01d097163a06" -> "sha256:58c8b419dcde5be9c172d51c6e0dc7eb25e0b95c2e4bd566c5546d0dfd061af3" [label=""];
}

