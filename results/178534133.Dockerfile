[app/sources/178534133.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt trusty main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:8b26a9fc5ceb8467f58defa048c09e078626ac946cd97716e138f1e713ff254d" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0570f30d82d38bc96136e74686c39209f585d1a3b750d655690e56cae67767d6" [label="mkdir{path=/data}" shape="note"];
  "sha256:5e6088d8bed0570f625e203986b7e977572fbc1bc34665d9235ff1bf5ff9c80c" [label="sha256:5e6088d8bed0570f625e203986b7e977572fbc1bc34665d9235ff1bf5ff9c80c" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" [label=""];
  "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" -> "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" [label=""];
  "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" -> "sha256:8b26a9fc5ceb8467f58defa048c09e078626ac946cd97716e138f1e713ff254d" [label=""];
  "sha256:8b26a9fc5ceb8467f58defa048c09e078626ac946cd97716e138f1e713ff254d" -> "sha256:0570f30d82d38bc96136e74686c39209f585d1a3b750d655690e56cae67767d6" [label=""];
  "sha256:0570f30d82d38bc96136e74686c39209f585d1a3b750d655690e56cae67767d6" -> "sha256:5e6088d8bed0570f625e203986b7e977572fbc1bc34665d9235ff1bf5ff9c80c" [label=""];
}

