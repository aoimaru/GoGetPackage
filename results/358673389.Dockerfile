[app/sources/358673389.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:ce022948a92fbf4d75d3a117fa3628edbb7468fd236a30ad754884e16608c0cc" [label="/bin/sh -c apt-get update && apt-get install -y logol-bin && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:b188fb289b2f2da4bfdcc79b87d41938700b30217712f902f6c1a98cc5262d53" [label="sha256:b188fb289b2f2da4bfdcc79b87d41938700b30217712f902f6c1a98cc5262d53" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:ce022948a92fbf4d75d3a117fa3628edbb7468fd236a30ad754884e16608c0cc" [label=""];
  "sha256:ce022948a92fbf4d75d3a117fa3628edbb7468fd236a30ad754884e16608c0cc" -> "sha256:b188fb289b2f2da4bfdcc79b87d41938700b30217712f902f6c1a98cc5262d53" [label=""];
}

