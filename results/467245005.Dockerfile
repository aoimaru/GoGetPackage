[app/sources/467245005.Dockerfile]
digraph {
  "sha256:066524238361405d5d7deafb5205d6480aee7ed452cfcb1ed60e5d965d4fa03e" [label="local://context" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:c32e7cd0b7b0cac031a02e385da2e91dec32c073e7f84f1a56fa7d72114203e2" [label="copy{src=/go.mod, dest=/go/src/github.com/infinimesh/infinimesh/go.mod}" shape="note"];
  "sha256:53248009acd41609f56d9bc2aa36aa37caa2ff764f452b77f94d7ecaf1554619" [label="copy{src=/, dest=/go/src/github.com/infinimesh/infinimesh}" shape="note"];
  "sha256:276d8aecb370e0777b11e470118be26fe99a51326d762988c566d17a96093f65" [label="mkdir{path=/go/src/github.com/infinimesh/infinimesh}" shape="note"];
  "sha256:45c8fbb44f561c1dae124c432f079a3ed214e4f345b50025050512be495a02b4" [label="/bin/sh -c cd /go/src/github.com/infinimesh/infinimesh && CGO_ENABLED=0 go build ./cmd/timescale-connector/" shape="box"];
  "sha256:54531d65cced4b494db5ce76c361b5dad958f40478e2e14746be409fe50e69ac" [label="copy{src=/go/src/github.com/infinimesh/infinimesh/timescale-connector, dest=/timescale-connector}" shape="note"];
  "sha256:853db16ab68a8ccd07f7bd0835f05e1f762c10fa08ec6e69a7cbe8ccae7b6494" [label="sha256:853db16ab68a8ccd07f7bd0835f05e1f762c10fa08ec6e69a7cbe8ccae7b6494" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:c32e7cd0b7b0cac031a02e385da2e91dec32c073e7f84f1a56fa7d72114203e2" [label=""];
  "sha256:066524238361405d5d7deafb5205d6480aee7ed452cfcb1ed60e5d965d4fa03e" -> "sha256:c32e7cd0b7b0cac031a02e385da2e91dec32c073e7f84f1a56fa7d72114203e2" [label=""];
  "sha256:c32e7cd0b7b0cac031a02e385da2e91dec32c073e7f84f1a56fa7d72114203e2" -> "sha256:53248009acd41609f56d9bc2aa36aa37caa2ff764f452b77f94d7ecaf1554619" [label=""];
  "sha256:066524238361405d5d7deafb5205d6480aee7ed452cfcb1ed60e5d965d4fa03e" -> "sha256:53248009acd41609f56d9bc2aa36aa37caa2ff764f452b77f94d7ecaf1554619" [label=""];
  "sha256:53248009acd41609f56d9bc2aa36aa37caa2ff764f452b77f94d7ecaf1554619" -> "sha256:276d8aecb370e0777b11e470118be26fe99a51326d762988c566d17a96093f65" [label=""];
  "sha256:276d8aecb370e0777b11e470118be26fe99a51326d762988c566d17a96093f65" -> "sha256:45c8fbb44f561c1dae124c432f079a3ed214e4f345b50025050512be495a02b4" [label=""];
  "sha256:45c8fbb44f561c1dae124c432f079a3ed214e4f345b50025050512be495a02b4" -> "sha256:54531d65cced4b494db5ce76c361b5dad958f40478e2e14746be409fe50e69ac" [label=""];
  "sha256:54531d65cced4b494db5ce76c361b5dad958f40478e2e14746be409fe50e69ac" -> "sha256:853db16ab68a8ccd07f7bd0835f05e1f762c10fa08ec6e69a7cbe8ccae7b6494" [label=""];
}

