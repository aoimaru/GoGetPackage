[app/sources/209165360.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:6be411500a811a63feba0455c316b4c602fd82388fd1b6d36cc85249ba91a098" [label="/bin/sh -c apk add --no-cache curl" shape="box"];
  "sha256:a32c30534212abbc031dd53b8ab8f648e249185bbaee3abf5d35d69e39d466f8" [label="local://context" shape="ellipse"];
  "sha256:a6a4c40db062a0e41c2cc5a5d9e6e01fd2d981fb1308434bb912e51292e61bbb" [label="copy{src=/build, dest=/app/}" shape="note"];
  "sha256:6ceeba5bd3a1c7df357b022484ff569f336c6642d57e6f7e3b8653e90337a7ce" [label="mkdir{path=/app}" shape="note"];
  "sha256:1b2c2fdb3971179de23e3595f6ffe634649e96008508c33c30f1734e8b2e849b" [label="sha256:1b2c2fdb3971179de23e3595f6ffe634649e96008508c33c30f1734e8b2e849b" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:6be411500a811a63feba0455c316b4c602fd82388fd1b6d36cc85249ba91a098" [label=""];
  "sha256:6be411500a811a63feba0455c316b4c602fd82388fd1b6d36cc85249ba91a098" -> "sha256:a6a4c40db062a0e41c2cc5a5d9e6e01fd2d981fb1308434bb912e51292e61bbb" [label=""];
  "sha256:a32c30534212abbc031dd53b8ab8f648e249185bbaee3abf5d35d69e39d466f8" -> "sha256:a6a4c40db062a0e41c2cc5a5d9e6e01fd2d981fb1308434bb912e51292e61bbb" [label=""];
  "sha256:a6a4c40db062a0e41c2cc5a5d9e6e01fd2d981fb1308434bb912e51292e61bbb" -> "sha256:6ceeba5bd3a1c7df357b022484ff569f336c6642d57e6f7e3b8653e90337a7ce" [label=""];
  "sha256:6ceeba5bd3a1c7df357b022484ff569f336c6642d57e6f7e3b8653e90337a7ce" -> "sha256:1b2c2fdb3971179de23e3595f6ffe634649e96008508c33c30f1734e8b2e849b" [label=""];
}

