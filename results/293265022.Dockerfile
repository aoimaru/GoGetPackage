[app/sources/293265022.Dockerfile]
digraph {
  "sha256:9e12d162109b00fec506e02e74d931cfc5d7b5dc74f842bde6b7e37a303259eb" [label="docker-image://docker.io/library/composer:1.4.2" shape="ellipse"];
  "sha256:75172f19d1a2051e907b287c51fe57ea390e61aba3b06000733f330e47c1f2db" [label="mkdir{path=/app}" shape="note"];
  "sha256:32a2ed62e29dcb28345dc7f179d26e938a8cc8025d475fe18da9ed4753b1d8c9" [label="sha256:32a2ed62e29dcb28345dc7f179d26e938a8cc8025d475fe18da9ed4753b1d8c9" shape="plaintext"];
  "sha256:9e12d162109b00fec506e02e74d931cfc5d7b5dc74f842bde6b7e37a303259eb" -> "sha256:75172f19d1a2051e907b287c51fe57ea390e61aba3b06000733f330e47c1f2db" [label=""];
  "sha256:75172f19d1a2051e907b287c51fe57ea390e61aba3b06000733f330e47c1f2db" -> "sha256:32a2ed62e29dcb28345dc7f179d26e938a8cc8025d475fe18da9ed4753b1d8c9" [label=""];
}

