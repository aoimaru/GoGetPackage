[app/sources/358673728.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:01695475bea342d4d44f1d7528ced7b7689f0fa55af2842ec4b1f0648c93f732" [label="/bin/sh -c apt-get update && apt-get install -y snap-aligner && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:a421d42fcfa8f45abca4ac41dabdfe8c6f4e11e408506834974f1ea4addda929" [label="sha256:a421d42fcfa8f45abca4ac41dabdfe8c6f4e11e408506834974f1ea4addda929" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:01695475bea342d4d44f1d7528ced7b7689f0fa55af2842ec4b1f0648c93f732" [label=""];
  "sha256:01695475bea342d4d44f1d7528ced7b7689f0fa55af2842ec4b1f0648c93f732" -> "sha256:a421d42fcfa8f45abca4ac41dabdfe8c6f4e11e408506834974f1ea4addda929" [label=""];
}

