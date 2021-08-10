[app/sources/358673323.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:da5c138b8094b4a0d722ffa1204baa362d484020e5ce7fdfa95f20d2739f9c83" [label="/bin/sh -c apt-get update && apt-get install -y gubbins && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:88f666928070afc2985efbe74a720511e38d60a7f7a5fb83210031555f623772" [label="sha256:88f666928070afc2985efbe74a720511e38d60a7f7a5fb83210031555f623772" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:da5c138b8094b4a0d722ffa1204baa362d484020e5ce7fdfa95f20d2739f9c83" [label=""];
  "sha256:da5c138b8094b4a0d722ffa1204baa362d484020e5ce7fdfa95f20d2739f9c83" -> "sha256:88f666928070afc2985efbe74a720511e38d60a7f7a5fb83210031555f623772" [label=""];
}

