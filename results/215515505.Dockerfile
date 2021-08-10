[app/sources/215515505.Dockerfile]
digraph {
  "sha256:94f64fe94928af067f5d9b751bdb4c7f088e1e35969a85efdde9eeca86c70571" [label="docker-image://docker.io/iron/dind:latest" shape="ellipse"];
  "sha256:12056b07fe8e4c4ba2554fc990367184d65f52eda5f700fbffb7d2af8053f569" [label="mkdir{path=/app}" shape="note"];
  "sha256:5d83c4f1e2eef4cab2da6a1940dea523363905feee07b049eac5fb2a2146285a" [label="local://context" shape="ellipse"];
  "sha256:2f16015b84f1a59af138c79d17d097d9b04a65b464bfc32c92a9e5c6a1155ff6" [label="copy{src=/functions-alpine, dest=/app/functions}" shape="note"];
  "sha256:54320c395ca12f660ab719afc974e53888cdaeee6141412985436b180cd3df6b" [label="sha256:54320c395ca12f660ab719afc974e53888cdaeee6141412985436b180cd3df6b" shape="plaintext"];
  "sha256:94f64fe94928af067f5d9b751bdb4c7f088e1e35969a85efdde9eeca86c70571" -> "sha256:12056b07fe8e4c4ba2554fc990367184d65f52eda5f700fbffb7d2af8053f569" [label=""];
  "sha256:12056b07fe8e4c4ba2554fc990367184d65f52eda5f700fbffb7d2af8053f569" -> "sha256:2f16015b84f1a59af138c79d17d097d9b04a65b464bfc32c92a9e5c6a1155ff6" [label=""];
  "sha256:5d83c4f1e2eef4cab2da6a1940dea523363905feee07b049eac5fb2a2146285a" -> "sha256:2f16015b84f1a59af138c79d17d097d9b04a65b464bfc32c92a9e5c6a1155ff6" [label=""];
  "sha256:2f16015b84f1a59af138c79d17d097d9b04a65b464bfc32c92a9e5c6a1155ff6" -> "sha256:54320c395ca12f660ab719afc974e53888cdaeee6141412985436b180cd3df6b" [label=""];
}

