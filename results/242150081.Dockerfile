[app/sources/242150081.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:35d340682c619c6eadd5e02f11dabebd1dde9c834e50a360248cca7a3d35d7ac" [label="mkdir{path=/shared}" shape="note"];
  "sha256:e42d5562941e1b228ce35cea3aecf8a96e32c1f591838dd2f19d541976acac06" [label="/bin/sh -c dpkg --add-architecture i386" shape="box"];
  "sha256:14af8d9306ab7cca59dca0b6452b7480be4ebabf5dd00794c1b5bac3eba55e3b" [label="/bin/sh -c apt-get update > /dev/null" shape="box"];
  "sha256:6ccfd1057a05927d80a3b5ce8f02a3ce1599359aa69c2d1786476f7d8fa6ca64" [label="/bin/sh -c apt-get install -y wget lsb-release whiptail procps gnupg iputils-ping apt-transport-https ca-certificates curl  > /dev/null" shape="box"];
  "sha256:d59ce3b36b6327eee2fd8d9b53ba78bab46d3e3fb95d19adc9a2c68e5f257e7b" [label="sha256:d59ce3b36b6327eee2fd8d9b53ba78bab46d3e3fb95d19adc9a2c68e5f257e7b" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:35d340682c619c6eadd5e02f11dabebd1dde9c834e50a360248cca7a3d35d7ac" [label=""];
  "sha256:35d340682c619c6eadd5e02f11dabebd1dde9c834e50a360248cca7a3d35d7ac" -> "sha256:e42d5562941e1b228ce35cea3aecf8a96e32c1f591838dd2f19d541976acac06" [label=""];
  "sha256:e42d5562941e1b228ce35cea3aecf8a96e32c1f591838dd2f19d541976acac06" -> "sha256:14af8d9306ab7cca59dca0b6452b7480be4ebabf5dd00794c1b5bac3eba55e3b" [label=""];
  "sha256:14af8d9306ab7cca59dca0b6452b7480be4ebabf5dd00794c1b5bac3eba55e3b" -> "sha256:6ccfd1057a05927d80a3b5ce8f02a3ce1599359aa69c2d1786476f7d8fa6ca64" [label=""];
  "sha256:6ccfd1057a05927d80a3b5ce8f02a3ce1599359aa69c2d1786476f7d8fa6ca64" -> "sha256:d59ce3b36b6327eee2fd8d9b53ba78bab46d3e3fb95d19adc9a2c68e5f257e7b" [label=""];
}

