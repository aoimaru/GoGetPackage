[app/sources/242536743.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:797f7e6d1353d4869451a9e73d3d52859df1128ab499863fbb2deb3198d30a12" [label="/bin/sh -c echo 'deb http://reproducible.alioth.debian.org/debian/ ./' > /etc/apt/sources.list  && echo 'deb-src http://reproducible.alioth.debian.org/debian/ ./' >> /etc/apt/sources.list" shape="box"];
  "sha256:fad7b572f07b87f6d0332fe21b13b9e2457596ee63fe499ac1dcf4d0eff5e19e" [label="/bin/sh -c apt-key adv --keyserver http://reproducible.alioth.debian.org/reproducible.asc --recv-keys 49B6574736D0B637CC3701EA5DB7CA67EA59A31F;   apt-get update;   apt-get dist-upgrade -y" shape="box"];
  "sha256:c823835122e40c8a4ffa4254ad5ff1a1aeba72e3b20e80859b76a10b232eb4ca" [label="sha256:c823835122e40c8a4ffa4254ad5ff1a1aeba72e3b20e80859b76a10b232eb4ca" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:797f7e6d1353d4869451a9e73d3d52859df1128ab499863fbb2deb3198d30a12" [label=""];
  "sha256:797f7e6d1353d4869451a9e73d3d52859df1128ab499863fbb2deb3198d30a12" -> "sha256:fad7b572f07b87f6d0332fe21b13b9e2457596ee63fe499ac1dcf4d0eff5e19e" [label=""];
  "sha256:fad7b572f07b87f6d0332fe21b13b9e2457596ee63fe499ac1dcf4d0eff5e19e" -> "sha256:c823835122e40c8a4ffa4254ad5ff1a1aeba72e3b20e80859b76a10b232eb4ca" [label=""];
}

