[app/sources/178534027.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt jessie main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:8d9d48b83c3feb18357a4de52cbd6100af9c0c493543e0271b834ababe0c4933" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7aeac19c007a5d1fc8f8c87a1337e7354fa431eb1d642f6bd1226d86e18250c2" [label="mkdir{path=/data}" shape="note"];
  "sha256:9eb3cdc962c39fff0a769ccf36d48972537362588d7cc7fe943c57deb348371d" [label="sha256:9eb3cdc962c39fff0a769ccf36d48972537362588d7cc7fe943c57deb348371d" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label=""];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" -> "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label=""];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" -> "sha256:8d9d48b83c3feb18357a4de52cbd6100af9c0c493543e0271b834ababe0c4933" [label=""];
  "sha256:8d9d48b83c3feb18357a4de52cbd6100af9c0c493543e0271b834ababe0c4933" -> "sha256:7aeac19c007a5d1fc8f8c87a1337e7354fa431eb1d642f6bd1226d86e18250c2" [label=""];
  "sha256:7aeac19c007a5d1fc8f8c87a1337e7354fa431eb1d642f6bd1226d86e18250c2" -> "sha256:9eb3cdc962c39fff0a769ccf36d48972537362588d7cc7fe943c57deb348371d" [label=""];
}

