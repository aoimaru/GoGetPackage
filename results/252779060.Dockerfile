[app/sources/252779060.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:da08b05e53ec40c8aeecf68bc3b80ea61b3458ebc0fb5559ef813d98e7b01d22" [label="/bin/sh -c pip install \"flake8\"" shape="box"];
  "sha256:381c1cd0502eec9880ff456a8b0c024cf4300dc6708931d766dda47d316cc37b" [label="sha256:381c1cd0502eec9880ff456a8b0c024cf4300dc6708931d766dda47d316cc37b" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:da08b05e53ec40c8aeecf68bc3b80ea61b3458ebc0fb5559ef813d98e7b01d22" [label=""];
  "sha256:da08b05e53ec40c8aeecf68bc3b80ea61b3458ebc0fb5559ef813d98e7b01d22" -> "sha256:381c1cd0502eec9880ff456a8b0c024cf4300dc6708931d766dda47d316cc37b" [label=""];
}

