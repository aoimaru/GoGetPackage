[app/sources/178534330.Dockerfile]
digraph {
  "sha256:e0d4ffa3c908e828a10bd1983342fddb89ae2c6f3ccd76679c0de5c3c2610b39" [label="docker-image://docker.io/library/debian:wheezy@sha256:2259b099d947443e44bbd1c94967c785361af8fd22df48a08a3942e2d5630849" shape="ellipse"];
  "sha256:97008068d0e25c39dc58af612079eff4ef42fadc2eaf83d00a70ceab3e4fcac1" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:d06e715c5f1b3c2c0885d233436b2973d86476c2569394090680fbfe3c82a7f3" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt wheezy main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:57108d3ee60fe374cbb584b61fdb2131cb50ab56ba6407641104c46f3cb0b32f" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8a59db74b61c15342296b21edf8953c31f06a90c6918b91a4b9541cb71da9412" [label="mkdir{path=/data}" shape="note"];
  "sha256:b2b0321711cba2c3f14e41fc0bd2be35a88fe5a7fdd3937b91f6720128cd119d" [label="sha256:b2b0321711cba2c3f14e41fc0bd2be35a88fe5a7fdd3937b91f6720128cd119d" shape="plaintext"];
  "sha256:e0d4ffa3c908e828a10bd1983342fddb89ae2c6f3ccd76679c0de5c3c2610b39" -> "sha256:97008068d0e25c39dc58af612079eff4ef42fadc2eaf83d00a70ceab3e4fcac1" [label=""];
  "sha256:97008068d0e25c39dc58af612079eff4ef42fadc2eaf83d00a70ceab3e4fcac1" -> "sha256:d06e715c5f1b3c2c0885d233436b2973d86476c2569394090680fbfe3c82a7f3" [label=""];
  "sha256:d06e715c5f1b3c2c0885d233436b2973d86476c2569394090680fbfe3c82a7f3" -> "sha256:57108d3ee60fe374cbb584b61fdb2131cb50ab56ba6407641104c46f3cb0b32f" [label=""];
  "sha256:57108d3ee60fe374cbb584b61fdb2131cb50ab56ba6407641104c46f3cb0b32f" -> "sha256:8a59db74b61c15342296b21edf8953c31f06a90c6918b91a4b9541cb71da9412" [label=""];
  "sha256:8a59db74b61c15342296b21edf8953c31f06a90c6918b91a4b9541cb71da9412" -> "sha256:b2b0321711cba2c3f14e41fc0bd2be35a88fe5a7fdd3937b91f6720128cd119d" [label=""];
}

