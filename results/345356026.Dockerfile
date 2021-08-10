[app/sources/345356026.Dockerfile]
digraph {
  "sha256:fad399c0eaf2b2bb50a4a9ff8fc5339af2c0ea570020ceea5202ca4a779a6489" [label="docker-image://docker.io/balenalib/armv7hf-debian:jessie-run" shape="ellipse"];
  "sha256:9c2a59e193487253e9ce982e9e1aa4ecfb6cf2e46f2a0b611141a888c04a80d2" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e90c56321463333307e384337de7d093bbd6a88daac757021a8af6499e9129af" [label="sha256:e90c56321463333307e384337de7d093bbd6a88daac757021a8af6499e9129af" shape="plaintext"];
  "sha256:fad399c0eaf2b2bb50a4a9ff8fc5339af2c0ea570020ceea5202ca4a779a6489" -> "sha256:9c2a59e193487253e9ce982e9e1aa4ecfb6cf2e46f2a0b611141a888c04a80d2" [label=""];
  "sha256:9c2a59e193487253e9ce982e9e1aa4ecfb6cf2e46f2a0b611141a888c04a80d2" -> "sha256:e90c56321463333307e384337de7d093bbd6a88daac757021a8af6499e9129af" [label=""];
}

