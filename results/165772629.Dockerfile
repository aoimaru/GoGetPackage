[app/sources/165772629.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:2ac983eb775e2bb08308c0fda967973197843db9248021aaba84165a7999d38d" [label="/bin/sh -c apk --no-cache add \tca-certificates \tgit" shape="box"];
  "sha256:b65ad9cb4f1a273a464e50f3061538e8b9ae68c50e174a99d4eea638a1550396" [label="/bin/sh -c go get github.com/mop-tracker/mop/cmd/mop" shape="box"];
  "sha256:a88787231849b8cd13182acd251b66427e08f2d1fe37a6ea45629045b3a810db" [label="copy{src=/go/bin/mop, dest=/usr/bin/mop}" shape="note"];
  "sha256:a11a9b9a954361cfaf1716d92d9d1946ecf6557dbfd865f916f1ecb44f8f0e3a" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:8b2007c5352e62a98a74c09673580ff92cd3c816043b895d0c0dbf2a90f5639f" [label="sha256:8b2007c5352e62a98a74c09673580ff92cd3c816043b895d0c0dbf2a90f5639f" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:2ac983eb775e2bb08308c0fda967973197843db9248021aaba84165a7999d38d" [label=""];
  "sha256:2ac983eb775e2bb08308c0fda967973197843db9248021aaba84165a7999d38d" -> "sha256:b65ad9cb4f1a273a464e50f3061538e8b9ae68c50e174a99d4eea638a1550396" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:a88787231849b8cd13182acd251b66427e08f2d1fe37a6ea45629045b3a810db" [label=""];
  "sha256:b65ad9cb4f1a273a464e50f3061538e8b9ae68c50e174a99d4eea638a1550396" -> "sha256:a88787231849b8cd13182acd251b66427e08f2d1fe37a6ea45629045b3a810db" [label=""];
  "sha256:a88787231849b8cd13182acd251b66427e08f2d1fe37a6ea45629045b3a810db" -> "sha256:a11a9b9a954361cfaf1716d92d9d1946ecf6557dbfd865f916f1ecb44f8f0e3a" [label=""];
  "sha256:b65ad9cb4f1a273a464e50f3061538e8b9ae68c50e174a99d4eea638a1550396" -> "sha256:a11a9b9a954361cfaf1716d92d9d1946ecf6557dbfd865f916f1ecb44f8f0e3a" [label=""];
  "sha256:a11a9b9a954361cfaf1716d92d9d1946ecf6557dbfd865f916f1ecb44f8f0e3a" -> "sha256:8b2007c5352e62a98a74c09673580ff92cd3c816043b895d0c0dbf2a90f5639f" [label=""];
}

