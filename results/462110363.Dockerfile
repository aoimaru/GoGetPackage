[app/sources/462110363.Dockerfile]
digraph {
  "sha256:0de4153cb10d3cebfef3b13d45744ad1f262299deac28389faa806f5a91734b3" [label="docker-image://docker.io/library/bin2llvm-dev:latest" shape="ellipse"];
  "sha256:14df72b8795dcf5c396650849546c9cfc87801c6dd05c980f65c4a48bde7e411" [label="/bin/sh -c rm -rf /usr/src/bin2llvm-build /usr/src/bin2llvm" shape="box"];
  "sha256:5f04d0f91072a42102fd1a262335a9b91e66d6c200994db93f72325fad515cae" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:7fdf661deb4abffeb10ea5f7cf0bdbe8f10e35fde1da7ee97e1e51b3290c2ff7" [label="sha256:7fdf661deb4abffeb10ea5f7cf0bdbe8f10e35fde1da7ee97e1e51b3290c2ff7" shape="plaintext"];
  "sha256:0de4153cb10d3cebfef3b13d45744ad1f262299deac28389faa806f5a91734b3" -> "sha256:14df72b8795dcf5c396650849546c9cfc87801c6dd05c980f65c4a48bde7e411" [label=""];
  "sha256:14df72b8795dcf5c396650849546c9cfc87801c6dd05c980f65c4a48bde7e411" -> "sha256:5f04d0f91072a42102fd1a262335a9b91e66d6c200994db93f72325fad515cae" [label=""];
  "sha256:5f04d0f91072a42102fd1a262335a9b91e66d6c200994db93f72325fad515cae" -> "sha256:7fdf661deb4abffeb10ea5f7cf0bdbe8f10e35fde1da7ee97e1e51b3290c2ff7" [label=""];
}

