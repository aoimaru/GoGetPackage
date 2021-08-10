[app/sources/358673620.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:7dfd034d8ae612800984fd34ed6a65518d3a56a5b3d71424ede872ac43b2b1ef" [label="/bin/sh -c apt-get update && apt-get install -y python3-pymummer && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:6e5e3cec1e5e5f2d1e74ed36e3503cf304f1446427a01ce1818112b9c007c26f" [label="sha256:6e5e3cec1e5e5f2d1e74ed36e3503cf304f1446427a01ce1818112b9c007c26f" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:7dfd034d8ae612800984fd34ed6a65518d3a56a5b3d71424ede872ac43b2b1ef" [label=""];
  "sha256:7dfd034d8ae612800984fd34ed6a65518d3a56a5b3d71424ede872ac43b2b1ef" -> "sha256:6e5e3cec1e5e5f2d1e74ed36e3503cf304f1446427a01ce1818112b9c007c26f" [label=""];
}

