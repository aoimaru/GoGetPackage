[app/sources/358673395.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:9401b72b02b79c3fe3831982e588340722c237655bad42e20513ee3bbafe0434" [label="/bin/sh -c apt-get update && apt-get install -y macsyfinder && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:300a845ec277fb487f2e9c630dc6044b16f0b37e58b8b9aef592b2baefe1b21f" [label="sha256:300a845ec277fb487f2e9c630dc6044b16f0b37e58b8b9aef592b2baefe1b21f" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:9401b72b02b79c3fe3831982e588340722c237655bad42e20513ee3bbafe0434" [label=""];
  "sha256:9401b72b02b79c3fe3831982e588340722c237655bad42e20513ee3bbafe0434" -> "sha256:300a845ec277fb487f2e9c630dc6044b16f0b37e58b8b9aef592b2baefe1b21f" [label=""];
}

