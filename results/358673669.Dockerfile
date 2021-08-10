[app/sources/358673669.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:7fa14ab01db692ffe16691dff0175b5211444bb6eec94ada7d12b10c328fe802" [label="/bin/sh -c apt-get update && apt-get install -y rtax && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:e0dbc5e06a70699dc7e4824487ff34ed0bc6d186dc3d8fccea9f604a0dc6d8a7" [label="sha256:e0dbc5e06a70699dc7e4824487ff34ed0bc6d186dc3d8fccea9f604a0dc6d8a7" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:7fa14ab01db692ffe16691dff0175b5211444bb6eec94ada7d12b10c328fe802" [label=""];
  "sha256:7fa14ab01db692ffe16691dff0175b5211444bb6eec94ada7d12b10c328fe802" -> "sha256:e0dbc5e06a70699dc7e4824487ff34ed0bc6d186dc3d8fccea9f604a0dc6d8a7" [label=""];
}

