[app/sources/358673314.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:4c46cbee8fdbb37dbb4906d127d1ba2f64350ef6bda2ead1d979c6000560395d" [label="/bin/sh -c apt-get update && apt-get install -y giira && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:947530875816bcfbf8fc413abdf10eaa4f7a67248df5ac3d29e4193a40e0a59b" [label="sha256:947530875816bcfbf8fc413abdf10eaa4f7a67248df5ac3d29e4193a40e0a59b" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:4c46cbee8fdbb37dbb4906d127d1ba2f64350ef6bda2ead1d979c6000560395d" [label=""];
  "sha256:4c46cbee8fdbb37dbb4906d127d1ba2f64350ef6bda2ead1d979c6000560395d" -> "sha256:947530875816bcfbf8fc413abdf10eaa4f7a67248df5ac3d29e4193a40e0a59b" [label=""];
}

