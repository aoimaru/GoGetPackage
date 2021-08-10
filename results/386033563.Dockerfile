[app/sources/386033563.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:fdac23d7f980bfecb5b88dcddbbbd4151ecafc3fc6848f62913875085535b7e5" [label="/bin/sh -c mkdir -p /a && touch /a/1" shape="box"];
  "sha256:c6a24fd5da76613dc710983c4e48331e89f5041ada24b986799e58908a0052c2" [label="copy{src=/a/1, dest=/a/b/c/}" shape="note"];
  "sha256:d7f7ce877873bed94b909484489ede62c8044d3eb6168fe04bda967a622ba967" [label="/bin/sh -c ls -al /a/b/c/1 && ! ls -al /a/b/1" shape="box"];
  "sha256:dc5e2e42227d96e8930c91cb77a92a4c63152ebb1d7be55ee6b055ae9e3f0f86" [label="sha256:dc5e2e42227d96e8930c91cb77a92a4c63152ebb1d7be55ee6b055ae9e3f0f86" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:fdac23d7f980bfecb5b88dcddbbbd4151ecafc3fc6848f62913875085535b7e5" [label=""];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:c6a24fd5da76613dc710983c4e48331e89f5041ada24b986799e58908a0052c2" [label=""];
  "sha256:fdac23d7f980bfecb5b88dcddbbbd4151ecafc3fc6848f62913875085535b7e5" -> "sha256:c6a24fd5da76613dc710983c4e48331e89f5041ada24b986799e58908a0052c2" [label=""];
  "sha256:c6a24fd5da76613dc710983c4e48331e89f5041ada24b986799e58908a0052c2" -> "sha256:d7f7ce877873bed94b909484489ede62c8044d3eb6168fe04bda967a622ba967" [label=""];
  "sha256:d7f7ce877873bed94b909484489ede62c8044d3eb6168fe04bda967a622ba967" -> "sha256:dc5e2e42227d96e8930c91cb77a92a4c63152ebb1d7be55ee6b055ae9e3f0f86" [label=""];
}

