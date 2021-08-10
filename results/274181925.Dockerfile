[app/sources/274181925.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:e128f978a34f7f626b7b7a3a17593e91731e0f9eee73f89d61aa34ae031a29bf" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a524741fa3feeac4c213b55a000bfa3149500cc36973c580c2c4b194c4f5c240" [label="/bin/sh -c apt-get install -y imagemagick" shape="box"];
  "sha256:57f65c9d95853d8a5fef95f83eeefff887e7c5c2917e626698bde22a7994179d" [label="sha256:57f65c9d95853d8a5fef95f83eeefff887e7c5c2917e626698bde22a7994179d" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:e128f978a34f7f626b7b7a3a17593e91731e0f9eee73f89d61aa34ae031a29bf" [label=""];
  "sha256:e128f978a34f7f626b7b7a3a17593e91731e0f9eee73f89d61aa34ae031a29bf" -> "sha256:a524741fa3feeac4c213b55a000bfa3149500cc36973c580c2c4b194c4f5c240" [label=""];
  "sha256:a524741fa3feeac4c213b55a000bfa3149500cc36973c580c2c4b194c4f5c240" -> "sha256:57f65c9d95853d8a5fef95f83eeefff887e7c5c2917e626698bde22a7994179d" [label=""];
}

