[app/sources/161605758.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:a458ca94b017d39dbc1ddf8063bca1b4cb31317133ba2c4eb087953d9bfdaa6e" [label="local://context" shape="ellipse"];
  "sha256:5dab42b045b9c93ad5efb82a7a7f7f19fcde22e4d26a264abd27cacb866a94f6" [label="copy{src=/offsetprinter, dest=/}" shape="note"];
  "sha256:0c69b7c27a98504c6ce9838336313de96c2b0cca5a0baf8bdc2261f26a15e1f7" [label="sha256:0c69b7c27a98504c6ce9838336313de96c2b0cca5a0baf8bdc2261f26a15e1f7" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:5dab42b045b9c93ad5efb82a7a7f7f19fcde22e4d26a264abd27cacb866a94f6" [label=""];
  "sha256:a458ca94b017d39dbc1ddf8063bca1b4cb31317133ba2c4eb087953d9bfdaa6e" -> "sha256:5dab42b045b9c93ad5efb82a7a7f7f19fcde22e4d26a264abd27cacb866a94f6" [label=""];
  "sha256:5dab42b045b9c93ad5efb82a7a7f7f19fcde22e4d26a264abd27cacb866a94f6" -> "sha256:0c69b7c27a98504c6ce9838336313de96c2b0cca5a0baf8bdc2261f26a15e1f7" [label=""];
}

