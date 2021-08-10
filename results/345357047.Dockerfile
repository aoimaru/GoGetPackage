[app/sources/345357047.Dockerfile]
digraph {
  "sha256:e2aa46ff889e63ef9ed222d1938c8d272fd4fbf73aa4b5fd6c160d0da3323110" [label="docker-image://docker.io/balenalib/armv7hf-fedora:29-build@sha256:9ffeceb5951dce7cf0eaefdee0218b3861bc72b2f7cb5c468e1c8fbdcbc479bf" shape="ellipse"];
  "sha256:c7950a3a382f85897e0aae33e6a43918423eed2797629a07e03fa0cac1d9bccb" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:eb7cf1335ac63e11a75f7ee86720a1de0d8060dee0cd147036bae048e9154ec5" [label="sha256:eb7cf1335ac63e11a75f7ee86720a1de0d8060dee0cd147036bae048e9154ec5" shape="plaintext"];
  "sha256:e2aa46ff889e63ef9ed222d1938c8d272fd4fbf73aa4b5fd6c160d0da3323110" -> "sha256:c7950a3a382f85897e0aae33e6a43918423eed2797629a07e03fa0cac1d9bccb" [label=""];
  "sha256:c7950a3a382f85897e0aae33e6a43918423eed2797629a07e03fa0cac1d9bccb" -> "sha256:eb7cf1335ac63e11a75f7ee86720a1de0d8060dee0cd147036bae048e9154ec5" [label=""];
}

