[app/sources/232738998.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:b0ea2e46a48e6d02d03febf30a8dc46266ac3fe9a0861554592bf5d44409696d" [label="local://context" shape="ellipse"];
  "sha256:07983fc5da6ae885529f4ab10c1ae3e9707819d07599f3859bc4850d644ae942" [label="copy{src=/kubernetes-vault-init, dest=/kubernetes-vault-init}" shape="note"];
  "sha256:e35cff20b8c55781b1cb9e0b5a7d770dd545074bb9970bc31146e1ebcdeefb8d" [label="sha256:e35cff20b8c55781b1cb9e0b5a7d770dd545074bb9970bc31146e1ebcdeefb8d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:07983fc5da6ae885529f4ab10c1ae3e9707819d07599f3859bc4850d644ae942" [label=""];
  "sha256:b0ea2e46a48e6d02d03febf30a8dc46266ac3fe9a0861554592bf5d44409696d" -> "sha256:07983fc5da6ae885529f4ab10c1ae3e9707819d07599f3859bc4850d644ae942" [label=""];
  "sha256:07983fc5da6ae885529f4ab10c1ae3e9707819d07599f3859bc4850d644ae942" -> "sha256:e35cff20b8c55781b1cb9e0b5a7d770dd545074bb9970bc31146e1ebcdeefb8d" [label=""];
}

