[app/sources/358673782.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:cf16ac573693cdc02fa7c64d19b9bde686736db69336403482e5ae13af7d6a6e" [label="/bin/sh -c apt-get update && apt-get install -y tantan && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:4dc47b86e55a82974c527d218cacb66b718ae155950da65250e947aa7ac759de" [label="sha256:4dc47b86e55a82974c527d218cacb66b718ae155950da65250e947aa7ac759de" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:cf16ac573693cdc02fa7c64d19b9bde686736db69336403482e5ae13af7d6a6e" [label=""];
  "sha256:cf16ac573693cdc02fa7c64d19b9bde686736db69336403482e5ae13af7d6a6e" -> "sha256:4dc47b86e55a82974c527d218cacb66b718ae155950da65250e947aa7ac759de" [label=""];
}

