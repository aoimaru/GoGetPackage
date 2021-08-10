[app/sources/252770049.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:a975c2bf0c5c8ce0b02acd24d7b26baa975b838b920d2cfc2838884d0e2e109e" [label="/bin/sh -c apt-get update && apt-get install yui-compressor -y" shape="box"];
  "sha256:8f7cd1d0d0b9a1afd828f3a21bc083300b7eb7a80c2d69c9af2ec818a17ed8d5" [label="sha256:8f7cd1d0d0b9a1afd828f3a21bc083300b7eb7a80c2d69c9af2ec818a17ed8d5" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:a975c2bf0c5c8ce0b02acd24d7b26baa975b838b920d2cfc2838884d0e2e109e" [label=""];
  "sha256:a975c2bf0c5c8ce0b02acd24d7b26baa975b838b920d2cfc2838884d0e2e109e" -> "sha256:8f7cd1d0d0b9a1afd828f3a21bc083300b7eb7a80c2d69c9af2ec818a17ed8d5" [label=""];
}

