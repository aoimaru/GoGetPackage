[app/sources/345355933.Dockerfile]
digraph {
  "sha256:9987c5f3d82ac47c72898562dc2e4d9de523898074616d36fdccb76b49198f34" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:trusty-build" shape="ellipse"];
  "sha256:95faa98b7067f9d9e5f274ff29738b7d41c112338c176f15a3c565bc31bbe915" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f60128f8d7d5d6fb5a2d0af0080e1b7720edca3f3e3758a64a6a5e192c8ac8dd" [label="sha256:f60128f8d7d5d6fb5a2d0af0080e1b7720edca3f3e3758a64a6a5e192c8ac8dd" shape="plaintext"];
  "sha256:9987c5f3d82ac47c72898562dc2e4d9de523898074616d36fdccb76b49198f34" -> "sha256:95faa98b7067f9d9e5f274ff29738b7d41c112338c176f15a3c565bc31bbe915" [label=""];
  "sha256:95faa98b7067f9d9e5f274ff29738b7d41c112338c176f15a3c565bc31bbe915" -> "sha256:f60128f8d7d5d6fb5a2d0af0080e1b7720edca3f3e3758a64a6a5e192c8ac8dd" [label=""];
}

