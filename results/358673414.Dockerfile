[app/sources/358673414.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:0a288cbb9c458202e0bba896c9b8aa059d25bdd12e2f947edf3044e0c873e88d" [label="/bin/sh -c apt-get update && apt-get install -y meryl && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:4eff37dbe33d7a5785a28a94ef0bbcb7ef824c8cf6f21272892b666ff5b0e117" [label="sha256:4eff37dbe33d7a5785a28a94ef0bbcb7ef824c8cf6f21272892b666ff5b0e117" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:0a288cbb9c458202e0bba896c9b8aa059d25bdd12e2f947edf3044e0c873e88d" [label=""];
  "sha256:0a288cbb9c458202e0bba896c9b8aa059d25bdd12e2f947edf3044e0c873e88d" -> "sha256:4eff37dbe33d7a5785a28a94ef0bbcb7ef824c8cf6f21272892b666ff5b0e117" [label=""];
}

