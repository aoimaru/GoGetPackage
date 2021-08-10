[app/sources/470530264.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:cbe11427b8edd20d9081798e6b4cc5faa8d13117e404c641903e51416992e555" [label="/bin/sh -c touch /test" shape="box"];
  "sha256:a2eb644a07cc9c3ccd9e5ff5a5a882a1e141c897501437cdf7444219eb385a3d" [label="sha256:a2eb644a07cc9c3ccd9e5ff5a5a882a1e141c897501437cdf7444219eb385a3d" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:cbe11427b8edd20d9081798e6b4cc5faa8d13117e404c641903e51416992e555" [label=""];
  "sha256:cbe11427b8edd20d9081798e6b4cc5faa8d13117e404c641903e51416992e555" -> "sha256:a2eb644a07cc9c3ccd9e5ff5a5a882a1e141c897501437cdf7444219eb385a3d" [label=""];
}

