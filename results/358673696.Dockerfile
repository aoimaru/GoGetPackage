[app/sources/358673696.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:82a6552548082fcd9d3482b56dfecff729941b8b697aac9541ac8d5c74da11b0" [label="/bin/sh -c apt-get update && apt-get install -y python3-screed && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:019317359dba27da8a11242f639c6a75478ad335cc5bd2e29705e564e9e2c8e2" [label="sha256:019317359dba27da8a11242f639c6a75478ad335cc5bd2e29705e564e9e2c8e2" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:82a6552548082fcd9d3482b56dfecff729941b8b697aac9541ac8d5c74da11b0" [label=""];
  "sha256:82a6552548082fcd9d3482b56dfecff729941b8b697aac9541ac8d5c74da11b0" -> "sha256:019317359dba27da8a11242f639c6a75478ad335cc5bd2e29705e564e9e2c8e2" [label=""];
}

