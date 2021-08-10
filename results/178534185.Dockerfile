[app/sources/178534185.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt trusty main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:8c22f7304c65735f7bb69cbe01a58c2cc60bc4773ac7b52783f320618299da8d" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:71aca68e9e598c27e241fa1c3289fe1d6df517ae56ca6f9d30504a0429de0f13" [label="mkdir{path=/data}" shape="note"];
  "sha256:fe237391e2951afa9bdf15557d29f754482b822648f230252502b78b7f1f5999" [label="sha256:fe237391e2951afa9bdf15557d29f754482b822648f230252502b78b7f1f5999" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" [label=""];
  "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" -> "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" [label=""];
  "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" -> "sha256:8c22f7304c65735f7bb69cbe01a58c2cc60bc4773ac7b52783f320618299da8d" [label=""];
  "sha256:8c22f7304c65735f7bb69cbe01a58c2cc60bc4773ac7b52783f320618299da8d" -> "sha256:71aca68e9e598c27e241fa1c3289fe1d6df517ae56ca6f9d30504a0429de0f13" [label=""];
  "sha256:71aca68e9e598c27e241fa1c3289fe1d6df517ae56ca6f9d30504a0429de0f13" -> "sha256:fe237391e2951afa9bdf15557d29f754482b822648f230252502b78b7f1f5999" [label=""];
}

