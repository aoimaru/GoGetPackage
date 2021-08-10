[app/sources/132975426.Dockerfile]
digraph {
  "sha256:e1981cc37a245d792cd90ee90e557f8ac5778b0814604f8f08f9f562582aafdc" [label="docker-image://docker.io/arm32v7/ubuntu:xenial" shape="ellipse"];
  "sha256:f45713c3f4e865804559d09bcbf435ace628b3b0d06ed2d621f43c84c980a6c1" [label="local://context" shape="ellipse"];
  "sha256:6f117080e4e1d68bc72d891b1b278608a56319af8ea18cdf9aadf249ebfed024" [label="copy{src=/scripts/build/qemu-user-static/usr/bin/qemu-arm-static, dest=/usr/bin/qemu-arm-static}" shape="note"];
  "sha256:1e7317cc9dcba0e3a3d3afa5a22edf0400073e405a8f038c2d8a0c423441360a" [label="sha256:1e7317cc9dcba0e3a3d3afa5a22edf0400073e405a8f038c2d8a0c423441360a" shape="plaintext"];
  "sha256:e1981cc37a245d792cd90ee90e557f8ac5778b0814604f8f08f9f562582aafdc" -> "sha256:6f117080e4e1d68bc72d891b1b278608a56319af8ea18cdf9aadf249ebfed024" [label=""];
  "sha256:f45713c3f4e865804559d09bcbf435ace628b3b0d06ed2d621f43c84c980a6c1" -> "sha256:6f117080e4e1d68bc72d891b1b278608a56319af8ea18cdf9aadf249ebfed024" [label=""];
  "sha256:6f117080e4e1d68bc72d891b1b278608a56319af8ea18cdf9aadf249ebfed024" -> "sha256:1e7317cc9dcba0e3a3d3afa5a22edf0400073e405a8f038c2d8a0c423441360a" [label=""];
}

