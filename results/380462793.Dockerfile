[app/sources/380462793.Dockerfile]
digraph {
  "sha256:f920359f7b6efe624585fc07ca0b0dce933fc59da7d7ef2c40d927860592e6cb" [label="docker-image://docker.io/dimkr/c-dev:latest" shape="ellipse"];
  "sha256:b6e5378b636795b9dbefab95a1e9ea8da2c6009f8cda320821ad4be1d3ba56b8" [label="/bin/sh -c apt-get -y --no-install-recommends install pkg-config libncurses5-dev" shape="box"];
  "sha256:9bd0ecb6cea03f811381866027599ff628b0a45dd558f823881b17094ab8c29f" [label="sha256:9bd0ecb6cea03f811381866027599ff628b0a45dd558f823881b17094ab8c29f" shape="plaintext"];
  "sha256:f920359f7b6efe624585fc07ca0b0dce933fc59da7d7ef2c40d927860592e6cb" -> "sha256:b6e5378b636795b9dbefab95a1e9ea8da2c6009f8cda320821ad4be1d3ba56b8" [label=""];
  "sha256:b6e5378b636795b9dbefab95a1e9ea8da2c6009f8cda320821ad4be1d3ba56b8" -> "sha256:9bd0ecb6cea03f811381866027599ff628b0a45dd558f823881b17094ab8c29f" [label=""];
}

