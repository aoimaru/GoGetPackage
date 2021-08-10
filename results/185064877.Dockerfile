[app/sources/185064877.Dockerfile]
digraph {
  "sha256:6bc512ee72a678c7e82e78a3535d6d9cb9abfec120c0787e7d8b991b7e4f1c82" [label="docker-image://docker.io/library/python:2.7.14-stretch" shape="ellipse"];
  "sha256:fb80a16c8868854837d52defa2cb25d6b6aa9b1f0621d7c140f11c73a5e53d5e" [label="/bin/sh -c apt-get update -yqq   && apt-get install -yqq ruby python-pip   && rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:c886103da0eb81e1a3edcb446db5f65fa5eb57bbf6d0f460b71e993a978d3dcc" [label="/bin/sh -c gem install sass -v 3.3.4" shape="box"];
  "sha256:1f17a19ebc15104a657a7a19a75b6a92754bedde5d0f43da4968ce5cdded6873" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:06b5c5818ca0e60d8a5ae4b45f9c201e13099999dde647999e1992937c2d65dd" [label="sha256:06b5c5818ca0e60d8a5ae4b45f9c201e13099999dde647999e1992937c2d65dd" shape="plaintext"];
  "sha256:6bc512ee72a678c7e82e78a3535d6d9cb9abfec120c0787e7d8b991b7e4f1c82" -> "sha256:fb80a16c8868854837d52defa2cb25d6b6aa9b1f0621d7c140f11c73a5e53d5e" [label=""];
  "sha256:fb80a16c8868854837d52defa2cb25d6b6aa9b1f0621d7c140f11c73a5e53d5e" -> "sha256:c886103da0eb81e1a3edcb446db5f65fa5eb57bbf6d0f460b71e993a978d3dcc" [label=""];
  "sha256:c886103da0eb81e1a3edcb446db5f65fa5eb57bbf6d0f460b71e993a978d3dcc" -> "sha256:1f17a19ebc15104a657a7a19a75b6a92754bedde5d0f43da4968ce5cdded6873" [label=""];
  "sha256:1f17a19ebc15104a657a7a19a75b6a92754bedde5d0f43da4968ce5cdded6873" -> "sha256:06b5c5818ca0e60d8a5ae4b45f9c201e13099999dde647999e1992937c2d65dd" [label=""];
}

