[app/sources/216188617.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:e675cf0fad2a239509bbafa6803f283c9bde62c9b17eead116b410a1f22110a7" [label="local://context" shape="ellipse"];
  "sha256:063b2fc102cae094f0ff2e74b28abdb552e5ee6bde3fd87a469069e763a3d64b" [label="copy{src=/httpserver, dest=/}" shape="note"];
  "sha256:690c3040849dcd8fd0203a24a0df6c14a1421041240cb5841c9f53c641451cdf" [label="sha256:690c3040849dcd8fd0203a24a0df6c14a1421041240cb5841c9f53c641451cdf" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:063b2fc102cae094f0ff2e74b28abdb552e5ee6bde3fd87a469069e763a3d64b" [label=""];
  "sha256:e675cf0fad2a239509bbafa6803f283c9bde62c9b17eead116b410a1f22110a7" -> "sha256:063b2fc102cae094f0ff2e74b28abdb552e5ee6bde3fd87a469069e763a3d64b" [label=""];
  "sha256:063b2fc102cae094f0ff2e74b28abdb552e5ee6bde3fd87a469069e763a3d64b" -> "sha256:690c3040849dcd8fd0203a24a0df6c14a1421041240cb5841c9f53c641451cdf" [label=""];
}

