[app/sources/358673581.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:ed2af26095cd0e7474905a58a2409874ae5a8a92b36b050fb59daedfc734d28d" [label="/bin/sh -c apt-get update && apt-get install -y prime-phylo && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:8d8f4b4fc6bd348293beb3c89b42286c3deffdcf8c4da39fae9eef703d958e4b" [label="sha256:8d8f4b4fc6bd348293beb3c89b42286c3deffdcf8c4da39fae9eef703d958e4b" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:ed2af26095cd0e7474905a58a2409874ae5a8a92b36b050fb59daedfc734d28d" [label=""];
  "sha256:ed2af26095cd0e7474905a58a2409874ae5a8a92b36b050fb59daedfc734d28d" -> "sha256:8d8f4b4fc6bd348293beb3c89b42286c3deffdcf8c4da39fae9eef703d958e4b" [label=""];
}

