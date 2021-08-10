[app/sources/178534072.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt jessie main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:82f0e1b3cd7fe72dcbca3614b880279a1c36ffb3e0e097af7f8c2afe914798a6" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8fef8b11b1d8e5716f4fe112f5bc6502d9da35b01794866903e606b1753e6378" [label="mkdir{path=/data}" shape="note"];
  "sha256:79912f093cea8e40206d842db6282bceabc5dcb8a744184268d7b78de7cceda1" [label="sha256:79912f093cea8e40206d842db6282bceabc5dcb8a744184268d7b78de7cceda1" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label=""];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" -> "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label=""];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" -> "sha256:82f0e1b3cd7fe72dcbca3614b880279a1c36ffb3e0e097af7f8c2afe914798a6" [label=""];
  "sha256:82f0e1b3cd7fe72dcbca3614b880279a1c36ffb3e0e097af7f8c2afe914798a6" -> "sha256:8fef8b11b1d8e5716f4fe112f5bc6502d9da35b01794866903e606b1753e6378" [label=""];
  "sha256:8fef8b11b1d8e5716f4fe112f5bc6502d9da35b01794866903e606b1753e6378" -> "sha256:79912f093cea8e40206d842db6282bceabc5dcb8a744184268d7b78de7cceda1" [label=""];
}

