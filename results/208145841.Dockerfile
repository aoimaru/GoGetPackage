[app/sources/208145841.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:f18231a7cbe077ab5fe816313f71eb83668252e4fc2d035414c0462f02e94ea6" [label="/bin/sh -c mkdir -p /data" shape="box"];
  "sha256:9e828587e2301750498082f54886a3e829852cee3b8981069c800927094c97dd" [label="sha256:9e828587e2301750498082f54886a3e829852cee3b8981069c800927094c97dd" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:f18231a7cbe077ab5fe816313f71eb83668252e4fc2d035414c0462f02e94ea6" [label=""];
  "sha256:f18231a7cbe077ab5fe816313f71eb83668252e4fc2d035414c0462f02e94ea6" -> "sha256:9e828587e2301750498082f54886a3e829852cee3b8981069c800927094c97dd" [label=""];
}

