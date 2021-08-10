[app/sources/358672972.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:07e4b1808f78e12c069eea33e0d40239541c3a93e34900998e05055027d6d40a" [label="/bin/sh -c apt-get update && apt-get install -y anfo && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:28c027a3a40f23bf8e59c23a6133236b569f2a1c05d7f5199f37df6cf776f696" [label="sha256:28c027a3a40f23bf8e59c23a6133236b569f2a1c05d7f5199f37df6cf776f696" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:07e4b1808f78e12c069eea33e0d40239541c3a93e34900998e05055027d6d40a" [label=""];
  "sha256:07e4b1808f78e12c069eea33e0d40239541c3a93e34900998e05055027d6d40a" -> "sha256:28c027a3a40f23bf8e59c23a6133236b569f2a1c05d7f5199f37df6cf776f696" [label=""];
}

