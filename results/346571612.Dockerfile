[app/sources/346571612.Dockerfile]
digraph {
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" [label="docker-image://docker.io/library/golang:1.7-alpine" shape="ellipse"];
  "sha256:e6da93ee8b15d6507c17d040db980d01c62c526148082d13c1a797ed8b29d457" [label="/bin/sh -c mkdir -p /go/src/github.com/nathanleclaire/hn" shape="box"];
  "sha256:85b00b2193a05bd08ba3d2f3d4264c93b5ee71d818ab3f64868e7efeeaca3f9b" [label="local://context" shape="ellipse"];
  "sha256:d32c084383dd93d53b8c5d3f963fe32513c802dfccd69e66dc0de0684bbf057f" [label="copy{src=/, dest=/go/src/github.com/nathanleclaire/hn}" shape="note"];
  "sha256:d18ac7d4e7d0be6319420e11449902fc249fe458386b277a30b3b0686223b70f" [label="/bin/sh -c go install github.com/nathanleclaire/hn" shape="box"];
  "sha256:5a406c2089940071e6645d8eb8ebd4520611fb6acde56c2804faed1d00ad131c" [label="sha256:5a406c2089940071e6645d8eb8ebd4520611fb6acde56c2804faed1d00ad131c" shape="plaintext"];
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" -> "sha256:e6da93ee8b15d6507c17d040db980d01c62c526148082d13c1a797ed8b29d457" [label=""];
  "sha256:e6da93ee8b15d6507c17d040db980d01c62c526148082d13c1a797ed8b29d457" -> "sha256:d32c084383dd93d53b8c5d3f963fe32513c802dfccd69e66dc0de0684bbf057f" [label=""];
  "sha256:85b00b2193a05bd08ba3d2f3d4264c93b5ee71d818ab3f64868e7efeeaca3f9b" -> "sha256:d32c084383dd93d53b8c5d3f963fe32513c802dfccd69e66dc0de0684bbf057f" [label=""];
  "sha256:d32c084383dd93d53b8c5d3f963fe32513c802dfccd69e66dc0de0684bbf057f" -> "sha256:d18ac7d4e7d0be6319420e11449902fc249fe458386b277a30b3b0686223b70f" [label=""];
  "sha256:d18ac7d4e7d0be6319420e11449902fc249fe458386b277a30b3b0686223b70f" -> "sha256:5a406c2089940071e6645d8eb8ebd4520611fb6acde56c2804faed1d00ad131c" [label=""];
}

