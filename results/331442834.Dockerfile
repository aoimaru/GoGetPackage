[app/sources/331442834.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:477c693cd182ce9e9f8b980debbac56d2c67bcce838775e840ffb7f2685d69e7" [label="/bin/sh -c apt-get update && apt-get install -y     gparted     libcanberra-gtk-module     --no-install-recommends" shape="box"];
  "sha256:466ec52800841cba120adca20d039939f44b4b31fa7c295df2b546c947866b50" [label="sha256:466ec52800841cba120adca20d039939f44b4b31fa7c295df2b546c947866b50" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:477c693cd182ce9e9f8b980debbac56d2c67bcce838775e840ffb7f2685d69e7" [label=""];
  "sha256:477c693cd182ce9e9f8b980debbac56d2c67bcce838775e840ffb7f2685d69e7" -> "sha256:466ec52800841cba120adca20d039939f44b4b31fa7c295df2b546c947866b50" [label=""];
}

