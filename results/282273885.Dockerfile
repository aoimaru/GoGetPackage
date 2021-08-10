[app/sources/282273885.Dockerfile]
digraph {
  "sha256:4b2c5379234b873aae0cec8a7fb0a0e894eb7d597e81b5cceca7f088fb10f330" [label="docker-image://quay.io/deis/go-dev:v1.5.0@sha256:1616f9e0f1852cf595fa42cce856068425c301bcbbc7bd9ae188049a7aaf241f" shape="ellipse"];
  "sha256:c236ab3fbbb3c310e37b8f8e3c2bd339a9ed44d8a6b398bb8dc9a7f56666838f" [label="/bin/sh -c go get github.com/codegangsta/gin" shape="box"];
  "sha256:709b21b5febc2344606eaea85c99028286b53b220589a005ae8191fc47dea41a" [label="local://context" shape="ellipse"];
  "sha256:eb9383950405562678152b384193b677987c22e5840c7ec712b615f74b6e9b09" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:6475af076ceb4c9ef408c72ea6d2e4d81c965f224f9385d4e6df371f13a4785f" [label="mkdir{path=/go/src/github.com/kubernetes-helm/monocular/src/api}" shape="note"];
  "sha256:c648c59963fcdb9336ef4f6c8d0dddfbdd23f5f7ca7c06d3d20c01d48dd2cc21" [label="sha256:c648c59963fcdb9336ef4f6c8d0dddfbdd23f5f7ca7c06d3d20c01d48dd2cc21" shape="plaintext"];
  "sha256:4b2c5379234b873aae0cec8a7fb0a0e894eb7d597e81b5cceca7f088fb10f330" -> "sha256:c236ab3fbbb3c310e37b8f8e3c2bd339a9ed44d8a6b398bb8dc9a7f56666838f" [label=""];
  "sha256:c236ab3fbbb3c310e37b8f8e3c2bd339a9ed44d8a6b398bb8dc9a7f56666838f" -> "sha256:eb9383950405562678152b384193b677987c22e5840c7ec712b615f74b6e9b09" [label=""];
  "sha256:709b21b5febc2344606eaea85c99028286b53b220589a005ae8191fc47dea41a" -> "sha256:eb9383950405562678152b384193b677987c22e5840c7ec712b615f74b6e9b09" [label=""];
  "sha256:eb9383950405562678152b384193b677987c22e5840c7ec712b615f74b6e9b09" -> "sha256:6475af076ceb4c9ef408c72ea6d2e4d81c965f224f9385d4e6df371f13a4785f" [label=""];
  "sha256:6475af076ceb4c9ef408c72ea6d2e4d81c965f224f9385d4e6df371f13a4785f" -> "sha256:c648c59963fcdb9336ef4f6c8d0dddfbdd23f5f7ca7c06d3d20c01d48dd2cc21" [label=""];
}

