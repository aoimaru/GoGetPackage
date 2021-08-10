[app/sources/358673281.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:5f1f2ee78c2edd409350baa6b9d43a69708ba1998dfc05309956d3c3514ac1cd" [label="/bin/sh -c apt-get update && apt-get install -y fis-gtm && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:f2c4eb7949b18cda40232674bfcedd62c9f4c73ecf34d39e033f0dcd3fe7dba7" [label="sha256:f2c4eb7949b18cda40232674bfcedd62c9f4c73ecf34d39e033f0dcd3fe7dba7" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:5f1f2ee78c2edd409350baa6b9d43a69708ba1998dfc05309956d3c3514ac1cd" [label=""];
  "sha256:5f1f2ee78c2edd409350baa6b9d43a69708ba1998dfc05309956d3c3514ac1cd" -> "sha256:f2c4eb7949b18cda40232674bfcedd62c9f4c73ecf34d39e033f0dcd3fe7dba7" [label=""];
}

