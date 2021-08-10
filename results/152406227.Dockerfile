[app/sources/152406227.Dockerfile]
digraph {
  "sha256:008eb27e04e6bbef677d670cd09822d1d981c4ad26dd80f646aa9bd6317d17fd" [label="docker-image://gcr.io/skia-public/basealpine:3.8" shape="ellipse"];
  "sha256:efe566997f1c48ea8e790599ba402b604b80e677e7fedabc1b8d60095dd1a338" [label="/bin/sh -c apk update &&     apk add --no-cache git ca-certificates tzdata" shape="box"];
  "sha256:e7652720cd3f0c080185bcfa41895547da5ce7292f77752065dc78462bfa9f09" [label="local://context" shape="ellipse"];
  "sha256:20eac0f358591e08efda7d17c36a46c21ce873b9511acc7957d243a81f6170e7" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:dbaef6801ed32b142b32acbd27721ac80e2b0dc235e9808048d380ccfbcf373f" [label="sha256:dbaef6801ed32b142b32acbd27721ac80e2b0dc235e9808048d380ccfbcf373f" shape="plaintext"];
  "sha256:008eb27e04e6bbef677d670cd09822d1d981c4ad26dd80f646aa9bd6317d17fd" -> "sha256:efe566997f1c48ea8e790599ba402b604b80e677e7fedabc1b8d60095dd1a338" [label=""];
  "sha256:efe566997f1c48ea8e790599ba402b604b80e677e7fedabc1b8d60095dd1a338" -> "sha256:20eac0f358591e08efda7d17c36a46c21ce873b9511acc7957d243a81f6170e7" [label=""];
  "sha256:e7652720cd3f0c080185bcfa41895547da5ce7292f77752065dc78462bfa9f09" -> "sha256:20eac0f358591e08efda7d17c36a46c21ce873b9511acc7957d243a81f6170e7" [label=""];
  "sha256:20eac0f358591e08efda7d17c36a46c21ce873b9511acc7957d243a81f6170e7" -> "sha256:dbaef6801ed32b142b32acbd27721ac80e2b0dc235e9808048d380ccfbcf373f" [label=""];
}

