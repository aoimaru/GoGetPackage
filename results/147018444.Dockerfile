[app/sources/147018444.Dockerfile]
digraph {
  "sha256:23c4ce6e918f463bc44c8c9e71c4b229e85148ade18058cf720d70a6b6b2b888" [label="docker-image://docker.io/library/node:10-slim" shape="ellipse"];
  "sha256:b3cb85ccb55869da7b8a62254cd9dab3dca799925d9d016d6d8923f0a06f699b" [label="/bin/sh -c yarn global add @graphql-inspector/actions@1.21.0" shape="box"];
  "sha256:b9edf0aad11f9e1e85429594632fd3e4eb793d566dd498d87738421145c0c37f" [label="local://context" shape="ellipse"];
  "sha256:efadb9664a98d959527b74aa2d0ec704e95e5c6c4f6b31c9d5fec28fcb6d60b6" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:c1473933e3831a0b74b04940b6d33cbcd121498b2d8e14382407324a020dca4c" [label="sha256:c1473933e3831a0b74b04940b6d33cbcd121498b2d8e14382407324a020dca4c" shape="plaintext"];
  "sha256:23c4ce6e918f463bc44c8c9e71c4b229e85148ade18058cf720d70a6b6b2b888" -> "sha256:b3cb85ccb55869da7b8a62254cd9dab3dca799925d9d016d6d8923f0a06f699b" [label=""];
  "sha256:b3cb85ccb55869da7b8a62254cd9dab3dca799925d9d016d6d8923f0a06f699b" -> "sha256:efadb9664a98d959527b74aa2d0ec704e95e5c6c4f6b31c9d5fec28fcb6d60b6" [label=""];
  "sha256:b9edf0aad11f9e1e85429594632fd3e4eb793d566dd498d87738421145c0c37f" -> "sha256:efadb9664a98d959527b74aa2d0ec704e95e5c6c4f6b31c9d5fec28fcb6d60b6" [label=""];
  "sha256:efadb9664a98d959527b74aa2d0ec704e95e5c6c4f6b31c9d5fec28fcb6d60b6" -> "sha256:c1473933e3831a0b74b04940b6d33cbcd121498b2d8e14382407324a020dca4c" [label=""];
}

