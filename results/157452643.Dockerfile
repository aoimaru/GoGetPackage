[app/sources/157452643.Dockerfile]
digraph {
  "sha256:e5b8c58b867ba120a3a7b70260d2ef90c710fc6177290064fce0b5d1c22eb59c" [label="docker-image://docker.io/library/node:4-alpine" shape="ellipse"];
  "sha256:6e6f59ed8dd74e075b3fff08ca28affaa5c298e049a8acd70235453780f6db53" [label="/bin/sh -c npm install -g dockerlint  && npm cache clean" shape="box"];
  "sha256:967d7a2da3ae5619166493fdd209aa9f88f8cef97c67436c03a2d81cd0f9b5b1" [label="sha256:967d7a2da3ae5619166493fdd209aa9f88f8cef97c67436c03a2d81cd0f9b5b1" shape="plaintext"];
  "sha256:e5b8c58b867ba120a3a7b70260d2ef90c710fc6177290064fce0b5d1c22eb59c" -> "sha256:6e6f59ed8dd74e075b3fff08ca28affaa5c298e049a8acd70235453780f6db53" [label=""];
  "sha256:6e6f59ed8dd74e075b3fff08ca28affaa5c298e049a8acd70235453780f6db53" -> "sha256:967d7a2da3ae5619166493fdd209aa9f88f8cef97c67436c03a2d81cd0f9b5b1" [label=""];
}

