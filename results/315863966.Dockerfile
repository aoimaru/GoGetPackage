[app/sources/315863966.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:5a9a8704cf89226b9e666652bfc6cc782d5594b590606fdbef360d64dbd2925e" [label="local://context" shape="ellipse"];
  "sha256:20540d241951ab19787454c50f36bf92a51fe07949c440dc61eb69adb7ddd635" [label="copy{src=/drivers/dummy, dest=/dummy}" shape="note"];
  "sha256:8c0dfac96d6f6d6210fd455c3a20a48e6fe80d6dff5e9d8c3d7886254dd3cf8a" [label="copy{src=/deploy.sh, dest=/deploy.sh}" shape="note"];
  "sha256:0ea50b17d304279050e8d0613a1d449362aec99993d9e82aa1aa8056d2fcb549" [label="sha256:0ea50b17d304279050e8d0613a1d449362aec99993d9e82aa1aa8056d2fcb549" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:20540d241951ab19787454c50f36bf92a51fe07949c440dc61eb69adb7ddd635" [label=""];
  "sha256:5a9a8704cf89226b9e666652bfc6cc782d5594b590606fdbef360d64dbd2925e" -> "sha256:20540d241951ab19787454c50f36bf92a51fe07949c440dc61eb69adb7ddd635" [label=""];
  "sha256:20540d241951ab19787454c50f36bf92a51fe07949c440dc61eb69adb7ddd635" -> "sha256:8c0dfac96d6f6d6210fd455c3a20a48e6fe80d6dff5e9d8c3d7886254dd3cf8a" [label=""];
  "sha256:5a9a8704cf89226b9e666652bfc6cc782d5594b590606fdbef360d64dbd2925e" -> "sha256:8c0dfac96d6f6d6210fd455c3a20a48e6fe80d6dff5e9d8c3d7886254dd3cf8a" [label=""];
  "sha256:8c0dfac96d6f6d6210fd455c3a20a48e6fe80d6dff5e9d8c3d7886254dd3cf8a" -> "sha256:0ea50b17d304279050e8d0613a1d449362aec99993d9e82aa1aa8056d2fcb549" [label=""];
}

