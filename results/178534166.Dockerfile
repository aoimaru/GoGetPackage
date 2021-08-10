[app/sources/178534166.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt trusty main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:195f9e4c40fe20cc7823bf63ed7790bbd354866e05daa62327154b2386c80fa5" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:00555e604a56e9dbf2c145516ab21411a4d006145eb20f4e6809be688d6c9f9b" [label="mkdir{path=/data}" shape="note"];
  "sha256:2f9bd2e8742cfa6bc90490210b6f308c2ce42e66770ad9c08146dec18c47affa" [label="sha256:2f9bd2e8742cfa6bc90490210b6f308c2ce42e66770ad9c08146dec18c47affa" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" [label=""];
  "sha256:825f0b8463c16496b22d6878dce0144d0472959ba7921729211652539cd5da3a" -> "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" [label=""];
  "sha256:dc92536e1a0e8ee8bd1deb7242a4b6eaf60f0fde5bc1b096d385f5a09922940e" -> "sha256:195f9e4c40fe20cc7823bf63ed7790bbd354866e05daa62327154b2386c80fa5" [label=""];
  "sha256:195f9e4c40fe20cc7823bf63ed7790bbd354866e05daa62327154b2386c80fa5" -> "sha256:00555e604a56e9dbf2c145516ab21411a4d006145eb20f4e6809be688d6c9f9b" [label=""];
  "sha256:00555e604a56e9dbf2c145516ab21411a4d006145eb20f4e6809be688d6c9f9b" -> "sha256:2f9bd2e8742cfa6bc90490210b6f308c2ce42e66770ad9c08146dec18c47affa" [label=""];
}

