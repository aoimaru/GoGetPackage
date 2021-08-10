[app/sources/345356790.Dockerfile]
digraph {
  "sha256:cf81a66b3c54e30e53fee51af5cb6ae0901836ff4410104b4ceae4fc2b4053ad" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:bionic-run" shape="ellipse"];
  "sha256:4cf1304344cf7fcbd7f2fe7a1d585fabd6f440863459f2fdec234530ec367a77" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tsoftware-properties-common \t&& add-apt-repository ppa:ubuntu-raspi2/ppa -y \t&& apt-get purge -y --auto-remove software-properties-common \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c954235fd7b340d8401d8e39862b658d00a962cb43119804fb4a98c38a2762d5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tlibraspberrypi-bin \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:57743ef10856e4a670a9544202417d4ffa088a17e4f2f8e1b50b06a56ac35652" [label="sha256:57743ef10856e4a670a9544202417d4ffa088a17e4f2f8e1b50b06a56ac35652" shape="plaintext"];
  "sha256:cf81a66b3c54e30e53fee51af5cb6ae0901836ff4410104b4ceae4fc2b4053ad" -> "sha256:4cf1304344cf7fcbd7f2fe7a1d585fabd6f440863459f2fdec234530ec367a77" [label=""];
  "sha256:4cf1304344cf7fcbd7f2fe7a1d585fabd6f440863459f2fdec234530ec367a77" -> "sha256:c954235fd7b340d8401d8e39862b658d00a962cb43119804fb4a98c38a2762d5" [label=""];
  "sha256:c954235fd7b340d8401d8e39862b658d00a962cb43119804fb4a98c38a2762d5" -> "sha256:57743ef10856e4a670a9544202417d4ffa088a17e4f2f8e1b50b06a56ac35652" [label=""];
}

