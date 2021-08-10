[app/sources/277095020.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a326d590431acfe03b3eeb28655e367d4d29f0d4d7284749a0a11b88599a825a" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     clang-6.0     clang-format-6.0     clang-tidy-6.0     cmake     doxygen     graphviz     lcov     libeigen3-dev     libpoco-dev     rename     valgrind     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:835b7bcb2d2be1ac8690c934bb39a5b5a6a6ed2d87a0fa4a37e482a47c2121eb" [label="sha256:835b7bcb2d2be1ac8690c934bb39a5b5a6a6ed2d87a0fa4a37e482a47c2121eb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a326d590431acfe03b3eeb28655e367d4d29f0d4d7284749a0a11b88599a825a" [label=""];
  "sha256:a326d590431acfe03b3eeb28655e367d4d29f0d4d7284749a0a11b88599a825a" -> "sha256:835b7bcb2d2be1ac8690c934bb39a5b5a6a6ed2d87a0fa4a37e482a47c2121eb" [label=""];
}

