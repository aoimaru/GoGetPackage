[app/sources/336863386.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:12bfb77dd9b6ddf438690193d9b338d906511917365845b7d1e0d975e38ed79b" [label="/bin/sh -c adduser alpine -D" shape="box"];
  "sha256:b24a0b583ca7008bdb0132f8b59a443092124499353baffd0ae3bf402c57f146" [label="sha256:b24a0b583ca7008bdb0132f8b59a443092124499353baffd0ae3bf402c57f146" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:12bfb77dd9b6ddf438690193d9b338d906511917365845b7d1e0d975e38ed79b" [label=""];
  "sha256:12bfb77dd9b6ddf438690193d9b338d906511917365845b7d1e0d975e38ed79b" -> "sha256:b24a0b583ca7008bdb0132f8b59a443092124499353baffd0ae3bf402c57f146" [label=""];
}

