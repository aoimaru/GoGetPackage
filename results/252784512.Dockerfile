[app/sources/252784512.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:998aab5556c8757e7c5521585b889c33c3677447a3cb7efcdf92cfbdd7d4c31d" [label="/bin/sh -c mkdir -p /var/www/symfony/data" shape="box"];
  "sha256:7d6e0adca072a059497db8b6c29b8ea8ac8c91349f890c849692815ebeb3e20c" [label="sha256:7d6e0adca072a059497db8b6c29b8ea8ac8c91349f890c849692815ebeb3e20c" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:998aab5556c8757e7c5521585b889c33c3677447a3cb7efcdf92cfbdd7d4c31d" [label=""];
  "sha256:998aab5556c8757e7c5521585b889c33c3677447a3cb7efcdf92cfbdd7d4c31d" -> "sha256:7d6e0adca072a059497db8b6c29b8ea8ac8c91349f890c849692815ebeb3e20c" [label=""];
}

