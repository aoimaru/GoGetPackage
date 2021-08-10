[app/sources/320100336.Dockerfile]
digraph {
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" [label="docker-image://docker.io/library/alpine:latest@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:a27226d259c60e146c1ed47100580ef58e6d54a5a8ee3b1706a596f29238c7e9" [label="/bin/sh -c apk add --no-cache \tbash \tstrace" shape="box"];
  "sha256:952f0806e45ee6bade2c66b3d467a957217a4de1b9faf95bc5a8ed80e3a529a0" [label="sha256:952f0806e45ee6bade2c66b3d467a957217a4de1b9faf95bc5a8ed80e3a529a0" shape="plaintext"];
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" -> "sha256:a27226d259c60e146c1ed47100580ef58e6d54a5a8ee3b1706a596f29238c7e9" [label=""];
  "sha256:a27226d259c60e146c1ed47100580ef58e6d54a5a8ee3b1706a596f29238c7e9" -> "sha256:952f0806e45ee6bade2c66b3d467a957217a4de1b9faf95bc5a8ed80e3a529a0" [label=""];
}

