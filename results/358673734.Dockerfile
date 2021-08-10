[app/sources/358673734.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:30bde9352d81d8fbcbc0258ed997246c49c05d5441e78495ffa752fe50625d95" [label="/bin/sh -c apt-get update && apt-get install -y soapdenovo && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:807a14f28650708d35ebb82d2ac8a07e6dd2169f8ca38e787d57dba53c247e07" [label="sha256:807a14f28650708d35ebb82d2ac8a07e6dd2169f8ca38e787d57dba53c247e07" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:30bde9352d81d8fbcbc0258ed997246c49c05d5441e78495ffa752fe50625d95" [label=""];
  "sha256:30bde9352d81d8fbcbc0258ed997246c49c05d5441e78495ffa752fe50625d95" -> "sha256:807a14f28650708d35ebb82d2ac8a07e6dd2169f8ca38e787d57dba53c247e07" [label=""];
}

