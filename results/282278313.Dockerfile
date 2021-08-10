[app/sources/282278313.Dockerfile]
digraph {
  "sha256:75aa2c2a5f407e8fdec03772a4589859c018da9f63826b5a0703028d2d026c08" [label="docker-image://docker.io/ceph/daemon:latest-mimic@sha256:01add9ac2ef9380f0ad2cf9a9198615e3feba6924de2bc5c5a865196a1881fd5" shape="ellipse"];
  "sha256:7fede733fa5efa6e8ef70e9af5afbc07a7111dd381d45a7c5b98cfceac14533f" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime" shape="box"];
  "sha256:9b2f1d9cb65b0e86d09fd7c515c7dc6b225fc984b30a7a6e3b316ba15b5ab0bb" [label="/bin/sh -c yum update -y &&     yum install -y iproute dpdk &&     yum clean all" shape="box"];
  "sha256:26be3fb2daca63769d49a21a493468eceec353e49ce49836ae2c62a55ff6800b" [label="sha256:26be3fb2daca63769d49a21a493468eceec353e49ce49836ae2c62a55ff6800b" shape="plaintext"];
  "sha256:75aa2c2a5f407e8fdec03772a4589859c018da9f63826b5a0703028d2d026c08" -> "sha256:7fede733fa5efa6e8ef70e9af5afbc07a7111dd381d45a7c5b98cfceac14533f" [label=""];
  "sha256:7fede733fa5efa6e8ef70e9af5afbc07a7111dd381d45a7c5b98cfceac14533f" -> "sha256:9b2f1d9cb65b0e86d09fd7c515c7dc6b225fc984b30a7a6e3b316ba15b5ab0bb" [label=""];
  "sha256:9b2f1d9cb65b0e86d09fd7c515c7dc6b225fc984b30a7a6e3b316ba15b5ab0bb" -> "sha256:26be3fb2daca63769d49a21a493468eceec353e49ce49836ae2c62a55ff6800b" [label=""];
}

