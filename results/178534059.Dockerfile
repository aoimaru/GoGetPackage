[app/sources/178534059.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt jessie main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:586218c2e1888bb12fc69f0e65b65737b1cc3f3d6c27a6e492a4f4e1ac408847" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4f09142d0d8bac7a03e7e2f3790bbdd002355b8e6f55ab2b867195f479dfd06b" [label="mkdir{path=/data}" shape="note"];
  "sha256:97fc2a2d6f764217ff2ede295af1af54147c752b138227eddd91a9584780b3e5" [label="sha256:97fc2a2d6f764217ff2ede295af1af54147c752b138227eddd91a9584780b3e5" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label=""];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" -> "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label=""];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" -> "sha256:586218c2e1888bb12fc69f0e65b65737b1cc3f3d6c27a6e492a4f4e1ac408847" [label=""];
  "sha256:586218c2e1888bb12fc69f0e65b65737b1cc3f3d6c27a6e492a4f4e1ac408847" -> "sha256:4f09142d0d8bac7a03e7e2f3790bbdd002355b8e6f55ab2b867195f479dfd06b" [label=""];
  "sha256:4f09142d0d8bac7a03e7e2f3790bbdd002355b8e6f55ab2b867195f479dfd06b" -> "sha256:97fc2a2d6f764217ff2ede295af1af54147c752b138227eddd91a9584780b3e5" [label=""];
}

