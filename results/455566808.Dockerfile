[app/sources/455566808.Dockerfile]
digraph {
  "sha256:1e264fbf27a2cbc68b294786207ed2a6125bac76b5bfb4152a448f1d88cfe767" [label="docker-image://docker.io/library/couchbase:4.5.1" shape="ellipse"];
  "sha256:3dadcdf2313e0fff85ca8deb9669bac32f3001c9aed143f85754387e8229c4c5" [label="local://context" shape="ellipse"];
  "sha256:3947615a0a81689f5027c49dc4f72879e75c600834e49903807a4cf027dbaf1c" [label="copy{src=/configure-node.sh, dest=/opt/couchbase}" shape="note"];
  "sha256:6d62b39e15f956183494ff6d85d4eaa0f24938f17a2033b4eb2cf7d421bf6850" [label="sha256:6d62b39e15f956183494ff6d85d4eaa0f24938f17a2033b4eb2cf7d421bf6850" shape="plaintext"];
  "sha256:1e264fbf27a2cbc68b294786207ed2a6125bac76b5bfb4152a448f1d88cfe767" -> "sha256:3947615a0a81689f5027c49dc4f72879e75c600834e49903807a4cf027dbaf1c" [label=""];
  "sha256:3dadcdf2313e0fff85ca8deb9669bac32f3001c9aed143f85754387e8229c4c5" -> "sha256:3947615a0a81689f5027c49dc4f72879e75c600834e49903807a4cf027dbaf1c" [label=""];
  "sha256:3947615a0a81689f5027c49dc4f72879e75c600834e49903807a4cf027dbaf1c" -> "sha256:6d62b39e15f956183494ff6d85d4eaa0f24938f17a2033b4eb2cf7d421bf6850" [label=""];
}

