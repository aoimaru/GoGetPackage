[app/sources/345357093.Dockerfile]
digraph {
  "sha256:8b36ef8c6fc5327211f6fa2f4e3f922ef270a3a33a2a0fde13500973163113f8" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:xenial-build" shape="ellipse"];
  "sha256:94ced62f576c67ebf81e5d00e8b1f40ff4b7cf89989cb6cc72ecbe55e27de4a5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:95f1e1c8ff629fd3e6db5d670e5ef347471ecefe1cc146bd4fbdc095bba0d825" [label="sha256:95f1e1c8ff629fd3e6db5d670e5ef347471ecefe1cc146bd4fbdc095bba0d825" shape="plaintext"];
  "sha256:8b36ef8c6fc5327211f6fa2f4e3f922ef270a3a33a2a0fde13500973163113f8" -> "sha256:94ced62f576c67ebf81e5d00e8b1f40ff4b7cf89989cb6cc72ecbe55e27de4a5" [label=""];
  "sha256:94ced62f576c67ebf81e5d00e8b1f40ff4b7cf89989cb6cc72ecbe55e27de4a5" -> "sha256:95f1e1c8ff629fd3e6db5d670e5ef347471ecefe1cc146bd4fbdc095bba0d825" [label=""];
}

