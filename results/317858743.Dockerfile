[app/sources/317858743.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:fe0f8415cb3602b4e42e201865cf6a74f16692f2d4609ef514700fa7e99505af" [label="local://context" shape="ellipse"];
  "sha256:d2b1a41fad8cdc4aa859218ec86e55f004b89a69b2ffc08ed7ca9da8ed3c020c" [label="copy{src=/bin/chain, dest=/chain}" shape="note"];
  "sha256:dea72a8edc2d20ffb0b11918e47f739d3b1434cf17b3509f67f0aed5e0aa8b65" [label="sha256:dea72a8edc2d20ffb0b11918e47f739d3b1434cf17b3509f67f0aed5e0aa8b65" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:d2b1a41fad8cdc4aa859218ec86e55f004b89a69b2ffc08ed7ca9da8ed3c020c" [label=""];
  "sha256:fe0f8415cb3602b4e42e201865cf6a74f16692f2d4609ef514700fa7e99505af" -> "sha256:d2b1a41fad8cdc4aa859218ec86e55f004b89a69b2ffc08ed7ca9da8ed3c020c" [label=""];
  "sha256:d2b1a41fad8cdc4aa859218ec86e55f004b89a69b2ffc08ed7ca9da8ed3c020c" -> "sha256:dea72a8edc2d20ffb0b11918e47f739d3b1434cf17b3509f67f0aed5e0aa8b65" [label=""];
}

