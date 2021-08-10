[app/sources/358673056.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:52e1ea5122a0d84ba3818266ba58e6eff19ec3eb48173806cb7dcca7bbc4ffe8" [label="/bin/sh -c apt-get update && apt-get install -y r-bioc-preprocesscore && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:0d6e8d921437e8a1ad41163c921d3ab7b1a05701eecd69c1401f4c5e284f9f92" [label="sha256:0d6e8d921437e8a1ad41163c921d3ab7b1a05701eecd69c1401f4c5e284f9f92" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:52e1ea5122a0d84ba3818266ba58e6eff19ec3eb48173806cb7dcca7bbc4ffe8" [label=""];
  "sha256:52e1ea5122a0d84ba3818266ba58e6eff19ec3eb48173806cb7dcca7bbc4ffe8" -> "sha256:0d6e8d921437e8a1ad41163c921d3ab7b1a05701eecd69c1401f4c5e284f9f92" [label=""];
}

