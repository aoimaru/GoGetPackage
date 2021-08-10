[app/sources/315336356.Dockerfile]
digraph {
  "sha256:c20c0ee6f64e24e28fe99635ddcc1a91c868b128fe8cca09f1362c5d5089db80" [label="docker-image://docker.io/rocker/tidyverse:3.5@sha256:025b03be66c55781981367a4f8a08e58e4ea4bbf889c3f8b10250f6da9235806" shape="ellipse"];
  "sha256:b8b067f92cd7514e674aad88bb65ac4475264d998518698945c1e4e85311ec0b" [label="/bin/sh -c apt-get update && apt-get install -y libmariadbclient-dev && R -e 'install.packages(\"RMariaDB\")'" shape="box"];
  "sha256:5b5ab5f389cfd6cb7947b32e1d4c38f5744eab560ba6be45c4d00f5a6ddb2220" [label="sha256:5b5ab5f389cfd6cb7947b32e1d4c38f5744eab560ba6be45c4d00f5a6ddb2220" shape="plaintext"];
  "sha256:c20c0ee6f64e24e28fe99635ddcc1a91c868b128fe8cca09f1362c5d5089db80" -> "sha256:b8b067f92cd7514e674aad88bb65ac4475264d998518698945c1e4e85311ec0b" [label=""];
  "sha256:b8b067f92cd7514e674aad88bb65ac4475264d998518698945c1e4e85311ec0b" -> "sha256:5b5ab5f389cfd6cb7947b32e1d4c38f5744eab560ba6be45c4d00f5a6ddb2220" [label=""];
}

