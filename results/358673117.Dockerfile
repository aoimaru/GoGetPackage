[app/sources/358673117.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:34977a591c2dd02ae43d86e3cec68365bbc0532c7092da3e0ac1efba16f32da0" [label="/bin/sh -c apt-get update && apt-get install -y biosquid && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:3c9b3fa65c63179b2c2c870580a59e6ab61a7d6bd49956f76f9763332c178bde" [label="sha256:3c9b3fa65c63179b2c2c870580a59e6ab61a7d6bd49956f76f9763332c178bde" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:34977a591c2dd02ae43d86e3cec68365bbc0532c7092da3e0ac1efba16f32da0" [label=""];
  "sha256:34977a591c2dd02ae43d86e3cec68365bbc0532c7092da3e0ac1efba16f32da0" -> "sha256:3c9b3fa65c63179b2c2c870580a59e6ab61a7d6bd49956f76f9763332c178bde" [label=""];
}

