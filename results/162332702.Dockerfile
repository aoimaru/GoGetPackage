[app/sources/162332702.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:6381ace65e792465d8fe37a4efab3ca7e390d28baa4c4284c61194b6b02eb775" [label="/bin/sh -c mkdir -p /sti-fake/src &&     mkdir -p /tmp/scripts && \tmkdir /usr/bin && \tln -s /bin/env /usr/bin/env" shape="box"];
  "sha256:d351c41f5c8f7138e6488e7e50d41b4b93dd904371040f6a4877115bf20853cd" [label="local://context" shape="ellipse"];
  "sha256:f12fcd76d206dbc68f58cd77447dca6863f92e926c2053a01fee345bef56f242" [label="copy{src=/scripts/.s2i/bin/run, dest=/tmp/scripts/}" shape="note"];
  "sha256:0ac930ef99c810613622abfd8be2e8fcb8e404aecbad4876923f0a81b9e682b9" [label="copy{src=/scripts/.s2i/bin/assemble, dest=/tmp/scripts/}" shape="note"];
  "sha256:f796b0d87bef8229a5c798a83d62337d1f230c87aff267362571b85a3a6e67bc" [label="sha256:f796b0d87bef8229a5c798a83d62337d1f230c87aff267362571b85a3a6e67bc" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:6381ace65e792465d8fe37a4efab3ca7e390d28baa4c4284c61194b6b02eb775" [label=""];
  "sha256:6381ace65e792465d8fe37a4efab3ca7e390d28baa4c4284c61194b6b02eb775" -> "sha256:f12fcd76d206dbc68f58cd77447dca6863f92e926c2053a01fee345bef56f242" [label=""];
  "sha256:d351c41f5c8f7138e6488e7e50d41b4b93dd904371040f6a4877115bf20853cd" -> "sha256:f12fcd76d206dbc68f58cd77447dca6863f92e926c2053a01fee345bef56f242" [label=""];
  "sha256:f12fcd76d206dbc68f58cd77447dca6863f92e926c2053a01fee345bef56f242" -> "sha256:0ac930ef99c810613622abfd8be2e8fcb8e404aecbad4876923f0a81b9e682b9" [label=""];
  "sha256:d351c41f5c8f7138e6488e7e50d41b4b93dd904371040f6a4877115bf20853cd" -> "sha256:0ac930ef99c810613622abfd8be2e8fcb8e404aecbad4876923f0a81b9e682b9" [label=""];
  "sha256:0ac930ef99c810613622abfd8be2e8fcb8e404aecbad4876923f0a81b9e682b9" -> "sha256:f796b0d87bef8229a5c798a83d62337d1f230c87aff267362571b85a3a6e67bc" [label=""];
}

