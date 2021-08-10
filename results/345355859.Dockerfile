[app/sources/345355859.Dockerfile]
digraph {
  "sha256:c0a778fc4d95b18760ab2235c0281555f6eec9a8ba5ff300a8e05fcb3dc6f296" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:1ba19411592bd93512b109a80d08ac4644a10d280a4777ff11e1933940b7ade4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3638215584e4eb3b8fc0da5ce18e9eae7c3c3a18eead73b2555876caf4c3f8b7" [label="sha256:3638215584e4eb3b8fc0da5ce18e9eae7c3c3a18eead73b2555876caf4c3f8b7" shape="plaintext"];
  "sha256:c0a778fc4d95b18760ab2235c0281555f6eec9a8ba5ff300a8e05fcb3dc6f296" -> "sha256:1ba19411592bd93512b109a80d08ac4644a10d280a4777ff11e1933940b7ade4" [label=""];
  "sha256:1ba19411592bd93512b109a80d08ac4644a10d280a4777ff11e1933940b7ade4" -> "sha256:3638215584e4eb3b8fc0da5ce18e9eae7c3c3a18eead73b2555876caf4c3f8b7" [label=""];
}

