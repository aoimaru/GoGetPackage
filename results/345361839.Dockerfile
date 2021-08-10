[app/sources/345361839.Dockerfile]
digraph {
  "sha256:cf81a66b3c54e30e53fee51af5cb6ae0901836ff4410104b4ceae4fc2b4053ad" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:bionic-run" shape="ellipse"];
  "sha256:7b5e95d6c4df43705389b5743b7960c3b0495a52889dffb6a08d2d9f2525ae37" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ef807cee9e2bfc21b33e21f8f3974d7a634d0f9b7cf5983b89f5cac05ba694c3" [label="sha256:ef807cee9e2bfc21b33e21f8f3974d7a634d0f9b7cf5983b89f5cac05ba694c3" shape="plaintext"];
  "sha256:cf81a66b3c54e30e53fee51af5cb6ae0901836ff4410104b4ceae4fc2b4053ad" -> "sha256:7b5e95d6c4df43705389b5743b7960c3b0495a52889dffb6a08d2d9f2525ae37" [label=""];
  "sha256:7b5e95d6c4df43705389b5743b7960c3b0495a52889dffb6a08d2d9f2525ae37" -> "sha256:ef807cee9e2bfc21b33e21f8f3974d7a634d0f9b7cf5983b89f5cac05ba694c3" [label=""];
}

