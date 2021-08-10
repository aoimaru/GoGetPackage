[app/sources/426349984.Dockerfile]
digraph {
  "sha256:952e54785488954fc31363960c19db048067eb4a2fd0f43082339c31b595613d" [label="docker-image://docker.io/library/maven:3.6.0" shape="ellipse"];
  "sha256:b0ef6fd9e63b3a2d206bff914e27145aee8885c205681bbe2c837a4069c3f8c0" [label="local://context" shape="ellipse"];
  "sha256:37a1f0a68c73d90a3c55abbe6e1558cd247cebf63c77cbec717693369d8478ec" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:e26d7f9e2119484ec6209980b19a3e703d1d15043344a99b455b3497576f84a3" [label="/bin/sh -c mvn -T 8 clean install" shape="box"];
  "sha256:790a211dbd500ceb41eef93c893420d474122b9c165275e21c327965d055ae92" [label="mkdir{path=/quix-webapps/quix-web-spring}" shape="note"];
  "sha256:1532ad207c576daab022d315fa7485309c8a00af60dc3903eb9b4d6b0770fce5" [label="sha256:1532ad207c576daab022d315fa7485309c8a00af60dc3903eb9b4d6b0770fce5" shape="plaintext"];
  "sha256:952e54785488954fc31363960c19db048067eb4a2fd0f43082339c31b595613d" -> "sha256:37a1f0a68c73d90a3c55abbe6e1558cd247cebf63c77cbec717693369d8478ec" [label=""];
  "sha256:b0ef6fd9e63b3a2d206bff914e27145aee8885c205681bbe2c837a4069c3f8c0" -> "sha256:37a1f0a68c73d90a3c55abbe6e1558cd247cebf63c77cbec717693369d8478ec" [label=""];
  "sha256:37a1f0a68c73d90a3c55abbe6e1558cd247cebf63c77cbec717693369d8478ec" -> "sha256:e26d7f9e2119484ec6209980b19a3e703d1d15043344a99b455b3497576f84a3" [label=""];
  "sha256:e26d7f9e2119484ec6209980b19a3e703d1d15043344a99b455b3497576f84a3" -> "sha256:790a211dbd500ceb41eef93c893420d474122b9c165275e21c327965d055ae92" [label=""];
  "sha256:790a211dbd500ceb41eef93c893420d474122b9c165275e21c327965d055ae92" -> "sha256:1532ad207c576daab022d315fa7485309c8a00af60dc3903eb9b4d6b0770fce5" [label=""];
}

