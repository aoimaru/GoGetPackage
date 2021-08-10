[app/sources/207174611.Dockerfile]
digraph {
  "sha256:70c3ade3b6790fd81eeb7eac0b1fef2c1e4f4c0ddaeeb12c0c5e9f789e037527" [label="docker-image://docker.io/library/rust:1.32.0" shape="ellipse"];
  "sha256:728f6aa0a43b2ea7eb3d5d373a808b0ed6f03d47277301630ad72a215229c167" [label="/bin/sh -c cargo install rustup-mirror" shape="box"];
  "sha256:66d33f2138aa40e17c62ee79aa20ca67b05b124e9f521837bcc7ce0a5017811e" [label="sha256:66d33f2138aa40e17c62ee79aa20ca67b05b124e9f521837bcc7ce0a5017811e" shape="plaintext"];
  "sha256:70c3ade3b6790fd81eeb7eac0b1fef2c1e4f4c0ddaeeb12c0c5e9f789e037527" -> "sha256:728f6aa0a43b2ea7eb3d5d373a808b0ed6f03d47277301630ad72a215229c167" [label=""];
  "sha256:728f6aa0a43b2ea7eb3d5d373a808b0ed6f03d47277301630ad72a215229c167" -> "sha256:66d33f2138aa40e17c62ee79aa20ca67b05b124e9f521837bcc7ce0a5017811e" [label=""];
}

