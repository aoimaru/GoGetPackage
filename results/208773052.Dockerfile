[app/sources/208773052.Dockerfile]
digraph {
  "sha256:4530f5043a17d123f49d1e733b7f17c0b23d285d995da4ee31ac5b2ee3e03ad5" [label="docker-image://docker.io/jfloff/alpine-python:2.7" shape="ellipse"];
  "sha256:271984cc3f692f0a90fc731970f76c8c07051887e9f5ced4577245b444bf9c9c" [label="/bin/sh -c apk add --update curl && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:2ec3bf76d3ebc7b9c901553ab9a7eb8a4fc974008e6bacefb130ea1e48fc11f6" [label="/bin/sh -c wget https://github.com/lair-framework/pylair/releases/download/v1.0.2/pylair-1.0.2.tar.gz     && pip install pylair-1.0.2.tar.gz" shape="box"];
  "sha256:6312173c5cd6b15fb8cd8cbc803042fa80d1e4dd115e486ee0b220363be11468" [label="sha256:6312173c5cd6b15fb8cd8cbc803042fa80d1e4dd115e486ee0b220363be11468" shape="plaintext"];
  "sha256:4530f5043a17d123f49d1e733b7f17c0b23d285d995da4ee31ac5b2ee3e03ad5" -> "sha256:271984cc3f692f0a90fc731970f76c8c07051887e9f5ced4577245b444bf9c9c" [label=""];
  "sha256:271984cc3f692f0a90fc731970f76c8c07051887e9f5ced4577245b444bf9c9c" -> "sha256:2ec3bf76d3ebc7b9c901553ab9a7eb8a4fc974008e6bacefb130ea1e48fc11f6" [label=""];
  "sha256:2ec3bf76d3ebc7b9c901553ab9a7eb8a4fc974008e6bacefb130ea1e48fc11f6" -> "sha256:6312173c5cd6b15fb8cd8cbc803042fa80d1e4dd115e486ee0b220363be11468" [label=""];
}

