[app/sources/358673308.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:28066afd2b800ad91ff41755d12de4296486534a8fae8940862d7be932333b13" [label="/bin/sh -c apt-get update && apt-get install -y genometools-common && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:d165a1ea7c93fb6987d14c39739840c60c9c8d42a0b86c12cba91b7bbf48fc4f" [label="sha256:d165a1ea7c93fb6987d14c39739840c60c9c8d42a0b86c12cba91b7bbf48fc4f" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:28066afd2b800ad91ff41755d12de4296486534a8fae8940862d7be932333b13" [label=""];
  "sha256:28066afd2b800ad91ff41755d12de4296486534a8fae8940862d7be932333b13" -> "sha256:d165a1ea7c93fb6987d14c39739840c60c9c8d42a0b86c12cba91b7bbf48fc4f" [label=""];
}

