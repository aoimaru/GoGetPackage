[app/sources/358673028.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:1b6e7efdfd3327771a2cf9b9eaebe7b586b172fd73066c1ee77a1c1a6e42e8ee" [label="/bin/sh -c apt-get update && apt-get install -y r-bioc-biostrings && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:255525a2abea6f3a8e28f5125648b3e2da7460dc6f8f31c92315866486274555" [label="sha256:255525a2abea6f3a8e28f5125648b3e2da7460dc6f8f31c92315866486274555" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:1b6e7efdfd3327771a2cf9b9eaebe7b586b172fd73066c1ee77a1c1a6e42e8ee" [label=""];
  "sha256:1b6e7efdfd3327771a2cf9b9eaebe7b586b172fd73066c1ee77a1c1a6e42e8ee" -> "sha256:255525a2abea6f3a8e28f5125648b3e2da7460dc6f8f31c92315866486274555" [label=""];
}

