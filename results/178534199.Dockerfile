[app/sources/178534199.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:73c3432156bfacf73a01f3d95c02e2e4bffaa12f7c627e7fc73a64e28510ee3e" [label="/bin/sh -c apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A" shape="box"];
  "sha256:aaf8167e198b58886eef01d6e31ff2dbda2cef59f3f0ddd3661dd9c7f7ed408b" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt trusty main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:680710b3d02f78889532ebfcd09b40c1fecf17e88f729368d49514533ce1abb9" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4c56bffe4630cf4ab15f1933dc9d5a4aeafa51dc768205a4eb4f514b9e3efea0" [label="mkdir{path=/data}" shape="note"];
  "sha256:f3f402b58a788024e21f07f9ae9ee65334d624d5901e4afaf42d04e4cd23ed22" [label="sha256:f3f402b58a788024e21f07f9ae9ee65334d624d5901e4afaf42d04e4cd23ed22" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:73c3432156bfacf73a01f3d95c02e2e4bffaa12f7c627e7fc73a64e28510ee3e" [label=""];
  "sha256:73c3432156bfacf73a01f3d95c02e2e4bffaa12f7c627e7fc73a64e28510ee3e" -> "sha256:aaf8167e198b58886eef01d6e31ff2dbda2cef59f3f0ddd3661dd9c7f7ed408b" [label=""];
  "sha256:aaf8167e198b58886eef01d6e31ff2dbda2cef59f3f0ddd3661dd9c7f7ed408b" -> "sha256:680710b3d02f78889532ebfcd09b40c1fecf17e88f729368d49514533ce1abb9" [label=""];
  "sha256:680710b3d02f78889532ebfcd09b40c1fecf17e88f729368d49514533ce1abb9" -> "sha256:4c56bffe4630cf4ab15f1933dc9d5a4aeafa51dc768205a4eb4f514b9e3efea0" [label=""];
  "sha256:4c56bffe4630cf4ab15f1933dc9d5a4aeafa51dc768205a4eb4f514b9e3efea0" -> "sha256:f3f402b58a788024e21f07f9ae9ee65334d624d5901e4afaf42d04e4cd23ed22" [label=""];
}

