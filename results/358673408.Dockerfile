[app/sources/358673408.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:3db8ca391c895c21f611cf4ab05838aa4eb1618e110996bb3e907b3c138919b3" [label="/bin/sh -c apt-get update && apt-get install -y mauve-aligner && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:8ec9ba1a84e34e91a953d08d78027cb213bf7da3d7c688cfc9312b21557e5f08" [label="sha256:8ec9ba1a84e34e91a953d08d78027cb213bf7da3d7c688cfc9312b21557e5f08" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:3db8ca391c895c21f611cf4ab05838aa4eb1618e110996bb3e907b3c138919b3" [label=""];
  "sha256:3db8ca391c895c21f611cf4ab05838aa4eb1618e110996bb3e907b3c138919b3" -> "sha256:8ec9ba1a84e34e91a953d08d78027cb213bf7da3d7c688cfc9312b21557e5f08" [label=""];
}

