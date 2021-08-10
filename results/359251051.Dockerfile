[app/sources/359251051.Dockerfile]
digraph {
  "sha256:baa32f9065972de657fb9c6cd2dc7ee5533a7470e7c028cc2d2c458cfda802c9" [label="docker-image://docker.io/stimela/sofia:1.0.1" shape="ellipse"];
  "sha256:4c799ef39caacf0e8ddaea2ed2f411a9283983f1dda9e80d5af7230b0bf75024" [label="local://context" shape="ellipse"];
  "sha256:5cca3471f0e8352868166f41c5de3a36803b6ecfd4e404ba82c3629d511a06ab" [label="copy{src=/src, dest=/scratch/code}" shape="note"];
  "sha256:54380c8ec7068b9676a8fe999af3e2070cc7f5f904406667fa72a150abf6649e" [label="sha256:54380c8ec7068b9676a8fe999af3e2070cc7f5f904406667fa72a150abf6649e" shape="plaintext"];
  "sha256:baa32f9065972de657fb9c6cd2dc7ee5533a7470e7c028cc2d2c458cfda802c9" -> "sha256:5cca3471f0e8352868166f41c5de3a36803b6ecfd4e404ba82c3629d511a06ab" [label=""];
  "sha256:4c799ef39caacf0e8ddaea2ed2f411a9283983f1dda9e80d5af7230b0bf75024" -> "sha256:5cca3471f0e8352868166f41c5de3a36803b6ecfd4e404ba82c3629d511a06ab" [label=""];
  "sha256:5cca3471f0e8352868166f41c5de3a36803b6ecfd4e404ba82c3629d511a06ab" -> "sha256:54380c8ec7068b9676a8fe999af3e2070cc7f5f904406667fa72a150abf6649e" [label=""];
}

