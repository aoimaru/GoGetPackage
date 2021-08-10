[app/sources/358673830.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:e3ab62f251066eb706fd0e388a7828f03c97fb05c54c76378735558b06b7b879" [label="/bin/sh -c apt-get update && apt-get install -y python-xopen && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:177d8494caf5c85f10d090a121b8a5cce46836f1d950b003831ef2b3e356cc1b" [label="sha256:177d8494caf5c85f10d090a121b8a5cce46836f1d950b003831ef2b3e356cc1b" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:e3ab62f251066eb706fd0e388a7828f03c97fb05c54c76378735558b06b7b879" [label=""];
  "sha256:e3ab62f251066eb706fd0e388a7828f03c97fb05c54c76378735558b06b7b879" -> "sha256:177d8494caf5c85f10d090a121b8a5cce46836f1d950b003831ef2b3e356cc1b" [label=""];
}

