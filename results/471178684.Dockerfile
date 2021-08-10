[app/sources/471178684.Dockerfile]
digraph {
  "sha256:2f31df8a75de169e91565fa0a58a802c3a2d6fd513617bdff0f7f2028653e2d6" [label="local://context" shape="ellipse"];
  "sha256:c75ec25f957dd77134e1c2d2fc81564a9c7a3a2d4435caad3961a329b7cdb0c0" [label="docker-image://docker.io/library/golang:1.11-stretch" shape="ellipse"];
  "sha256:7a8613d5ad001ed9b622ac79d97e062adb3f0e495a271fad5887f89f1ce0774a" [label="copy{src=/package.json, dest=/go/src/github.com/ipfs/go-ipfs/package.json}" shape="note"];
  "sha256:d54b4fcc3af1881a182a3aa2752ccd26c92f33d73b6039e4064f1e401409a9c5" [label="/bin/sh -c set -x   && go get github.com/whyrusleeping/gx   && go get github.com/whyrusleeping/gx-go   && ([ -z \"$GX_IPFS\" ] || echo $GX_IPFS > /root/.ipfs/api)   && cd $SRC_DIR   && gx install" shape="box"];
  "sha256:020dbf397e32fbea79beb9d407aa552a0ac7ec6757972a6f1b4f23c294e34bb2" [label="copy{src=/, dest=/go/src/github.com/ipfs/go-ipfs}" shape="note"];
  "sha256:078fd1d4d1211067ae6fff2fada3fa36e0fd680d7a626a302081c3b20ab565fe" [label="/bin/sh -c set -x   && cd $SRC_DIR   && mkdir .git/objects   && make build   && mv cmd/ipfs/ipfs /usr/local/bin/ipfs   && mv bin/container_daemon /usr/local/bin/start_ipfs" shape="box"];
  "sha256:dddbedecdb3452fd511dd7fb6c8ad20cd30c25c1fe0bdf71fd3d7fcd37f06ad1" [label="/bin/sh -c set -x   && cd /tmp   && git clone https://github.com/ncopa/su-exec.git   && cd su-exec   && git checkout -q $SUEXEC_VERSION   && make   && cd /tmp   && wget -q -O tini https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini   && chmod +x tini   && mv su-exec/su-exec tini /sbin/ # Install them" shape="box"];
  "sha256:6af13dceed7b4cecb85d18a5b521116ae545ac026229e92700a0f51ec98f3174" [label="/bin/sh -c mkdir -p $IPFS_PATH   && useradd -s /usr/sbin/nologin -d $IPFS_PATH -u 1000 -G users ipfs   && chown ipfs:users $IPFS_PATH" shape="box"];
  "sha256:fe5f659ae5833f322a35d20872a867e3b6cb21077150024e3ae6127afb07d46d" [label="sha256:fe5f659ae5833f322a35d20872a867e3b6cb21077150024e3ae6127afb07d46d" shape="plaintext"];
  "sha256:c75ec25f957dd77134e1c2d2fc81564a9c7a3a2d4435caad3961a329b7cdb0c0" -> "sha256:7a8613d5ad001ed9b622ac79d97e062adb3f0e495a271fad5887f89f1ce0774a" [label=""];
  "sha256:2f31df8a75de169e91565fa0a58a802c3a2d6fd513617bdff0f7f2028653e2d6" -> "sha256:7a8613d5ad001ed9b622ac79d97e062adb3f0e495a271fad5887f89f1ce0774a" [label=""];
  "sha256:7a8613d5ad001ed9b622ac79d97e062adb3f0e495a271fad5887f89f1ce0774a" -> "sha256:d54b4fcc3af1881a182a3aa2752ccd26c92f33d73b6039e4064f1e401409a9c5" [label=""];
  "sha256:d54b4fcc3af1881a182a3aa2752ccd26c92f33d73b6039e4064f1e401409a9c5" -> "sha256:020dbf397e32fbea79beb9d407aa552a0ac7ec6757972a6f1b4f23c294e34bb2" [label=""];
  "sha256:2f31df8a75de169e91565fa0a58a802c3a2d6fd513617bdff0f7f2028653e2d6" -> "sha256:020dbf397e32fbea79beb9d407aa552a0ac7ec6757972a6f1b4f23c294e34bb2" [label=""];
  "sha256:020dbf397e32fbea79beb9d407aa552a0ac7ec6757972a6f1b4f23c294e34bb2" -> "sha256:078fd1d4d1211067ae6fff2fada3fa36e0fd680d7a626a302081c3b20ab565fe" [label=""];
  "sha256:078fd1d4d1211067ae6fff2fada3fa36e0fd680d7a626a302081c3b20ab565fe" -> "sha256:dddbedecdb3452fd511dd7fb6c8ad20cd30c25c1fe0bdf71fd3d7fcd37f06ad1" [label=""];
  "sha256:dddbedecdb3452fd511dd7fb6c8ad20cd30c25c1fe0bdf71fd3d7fcd37f06ad1" -> "sha256:6af13dceed7b4cecb85d18a5b521116ae545ac026229e92700a0f51ec98f3174" [label=""];
  "sha256:6af13dceed7b4cecb85d18a5b521116ae545ac026229e92700a0f51ec98f3174" -> "sha256:fe5f659ae5833f322a35d20872a867e3b6cb21077150024e3ae6127afb07d46d" [label=""];
}

