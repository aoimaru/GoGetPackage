[app/sources/345362351.Dockerfile]
digraph {
  "sha256:b873a32c431f322e44496f2c6df7d42332c21e27c51e740ae6102aa861fd1f86" [label="docker-image://docker.io/balenalib/aarch64-alpine:3.5-run" shape="ellipse"];
  "sha256:1d14939f1257c960bb3fdbef092c1dbd6d667e4f1356d8f35bb1fe7c30ba5b69" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:32370daef92d1cb379462978fd9c5430094bb226485d19af7ef91b0725458f15" [label="sha256:32370daef92d1cb379462978fd9c5430094bb226485d19af7ef91b0725458f15" shape="plaintext"];
  "sha256:b873a32c431f322e44496f2c6df7d42332c21e27c51e740ae6102aa861fd1f86" -> "sha256:1d14939f1257c960bb3fdbef092c1dbd6d667e4f1356d8f35bb1fe7c30ba5b69" [label=""];
  "sha256:1d14939f1257c960bb3fdbef092c1dbd6d667e4f1356d8f35bb1fe7c30ba5b69" -> "sha256:32370daef92d1cb379462978fd9c5430094bb226485d19af7ef91b0725458f15" [label=""];
}

