[app/sources/358673376.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:f4a88c388f9b60191de0847d06fed125bb25368170033d68971ab772a20dc93c" [label="/bin/sh -c apt-get update && apt-get install -y python-kineticstools && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:fa28c98491edc6b5d469f535743af7d6822ce1c3db712f4a3c35c66fec5ca441" [label="sha256:fa28c98491edc6b5d469f535743af7d6822ce1c3db712f4a3c35c66fec5ca441" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:f4a88c388f9b60191de0847d06fed125bb25368170033d68971ab772a20dc93c" [label=""];
  "sha256:f4a88c388f9b60191de0847d06fed125bb25368170033d68971ab772a20dc93c" -> "sha256:fa28c98491edc6b5d469f535743af7d6822ce1c3db712f4a3c35c66fec5ca441" [label=""];
}

