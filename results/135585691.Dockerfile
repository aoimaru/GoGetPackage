[app/sources/135585691.Dockerfile]
digraph {
  "sha256:04dc6b01e7dae6b5f9613a328ae47a35570d015cbf6ae0d0a5a70f9eaaa5b68d" [label="docker-image://docker.io/test/definitions/base-install-node:latest" shape="ellipse"];
  "sha256:b63ce4cbe26273e448134b7425ac5e3c2928c24eb9ef25e6ac2cc682b5e78ac3" [label="/bin/sh -c install_node --ignore-verification-failure v0.10.7" shape="box"];
  "sha256:a295c353b311c5bc03a5b667308c1bf05d90e365fcb5c988b13916cdbbae800f" [label="sha256:a295c353b311c5bc03a5b667308c1bf05d90e365fcb5c988b13916cdbbae800f" shape="plaintext"];
  "sha256:04dc6b01e7dae6b5f9613a328ae47a35570d015cbf6ae0d0a5a70f9eaaa5b68d" -> "sha256:b63ce4cbe26273e448134b7425ac5e3c2928c24eb9ef25e6ac2cc682b5e78ac3" [label=""];
  "sha256:b63ce4cbe26273e448134b7425ac5e3c2928c24eb9ef25e6ac2cc682b5e78ac3" -> "sha256:a295c353b311c5bc03a5b667308c1bf05d90e365fcb5c988b13916cdbbae800f" [label=""];
}

