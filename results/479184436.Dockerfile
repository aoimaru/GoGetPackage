[app/sources/479184436.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:b82bc5136b7dfadb368a7888ab80d7bbbb5af457d9c27ec99e64aa58046bc135" [label="/bin/sh -c apt-get update && apt-get install -y  librubberband-dev alsa-utils gcc-6 libasound2-dev libopus-dev build-essential git libjson-c-dev libsoxr-dev cmake devscripts" shape="box"];
  "sha256:b8e88c14e46c4689729bb8d681689f1be7a9cc0dab0466046436a489c38a8585" [label="sha256:b8e88c14e46c4689729bb8d681689f1be7a9cc0dab0466046436a489c38a8585" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:b82bc5136b7dfadb368a7888ab80d7bbbb5af457d9c27ec99e64aa58046bc135" [label=""];
  "sha256:b82bc5136b7dfadb368a7888ab80d7bbbb5af457d9c27ec99e64aa58046bc135" -> "sha256:b8e88c14e46c4689729bb8d681689f1be7a9cc0dab0466046436a489c38a8585" [label=""];
}

