[app/sources/358672959.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:6224b7111319d8097b5e5143eb4692e12d6179117b7216190d443e8b6fa7b20b" [label="/bin/sh -c apt-get update && apt-get install -y adun.app && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:12e226510ae62f7b588b5fb480490249dd9ce2588316f7da557c21f0646e0d53" [label="sha256:12e226510ae62f7b588b5fb480490249dd9ce2588316f7da557c21f0646e0d53" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:6224b7111319d8097b5e5143eb4692e12d6179117b7216190d443e8b6fa7b20b" [label=""];
  "sha256:6224b7111319d8097b5e5143eb4692e12d6179117b7216190d443e8b6fa7b20b" -> "sha256:12e226510ae62f7b588b5fb480490249dd9ce2588316f7da557c21f0646e0d53" [label=""];
}

