[app/sources/435540277.Dockerfile]
digraph {
  "sha256:cd5c31053fdffffebbccfcf1d4e7b5f4f077bac6cc67a51fb29169e36a375c8b" [label="docker-image://docker.io/travis/pythia:latest" shape="ellipse"];
  "sha256:43d35abf9f711f2518e769f210ff2e8d1424aef4d27033ffebdc0b7d28df6da3" [label="/bin/sh -c go get -v github.com/coleifer/mastodon" shape="box"];
  "sha256:c78712f384bf9c78db67668334031796bb4216ab152ba0a13e72ff2c7f71681e" [label="sha256:c78712f384bf9c78db67668334031796bb4216ab152ba0a13e72ff2c7f71681e" shape="plaintext"];
  "sha256:cd5c31053fdffffebbccfcf1d4e7b5f4f077bac6cc67a51fb29169e36a375c8b" -> "sha256:43d35abf9f711f2518e769f210ff2e8d1424aef4d27033ffebdc0b7d28df6da3" [label=""];
  "sha256:43d35abf9f711f2518e769f210ff2e8d1424aef4d27033ffebdc0b7d28df6da3" -> "sha256:c78712f384bf9c78db67668334031796bb4216ab152ba0a13e72ff2c7f71681e" [label=""];
}

