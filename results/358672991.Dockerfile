[app/sources/358672991.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:d5a14698f7e7b7b979b08e053db61d35b19c724501b2b78a6df8ecd2f36fe3c7" [label="/bin/sh -c apt-get update && apt-get install -y axe-demultiplexer && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:19fc6d9f771792cfc316460d05d2c4c4c2d4eb550f6a862eb544d2501458b690" [label="sha256:19fc6d9f771792cfc316460d05d2c4c4c2d4eb550f6a862eb544d2501458b690" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:d5a14698f7e7b7b979b08e053db61d35b19c724501b2b78a6df8ecd2f36fe3c7" [label=""];
  "sha256:d5a14698f7e7b7b979b08e053db61d35b19c724501b2b78a6df8ecd2f36fe3c7" -> "sha256:19fc6d9f771792cfc316460d05d2c4c4c2d4eb550f6a862eb544d2501458b690" [label=""];
}

