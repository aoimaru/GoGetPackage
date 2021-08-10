[app/sources/358673082.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:e4236cc69f73584473410ff88fc8149aca44cd45e73a1c11099b456a5291e6a8" [label="/bin/sh -c apt-get update && apt-get install -y python3-biopython && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:f024feeaf68cd27ac083a82f4b5249a7e002c94290261052158cccc5a0fa55c6" [label="sha256:f024feeaf68cd27ac083a82f4b5249a7e002c94290261052158cccc5a0fa55c6" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:e4236cc69f73584473410ff88fc8149aca44cd45e73a1c11099b456a5291e6a8" [label=""];
  "sha256:e4236cc69f73584473410ff88fc8149aca44cd45e73a1c11099b456a5291e6a8" -> "sha256:f024feeaf68cd27ac083a82f4b5249a7e002c94290261052158cccc5a0fa55c6" [label=""];
}

