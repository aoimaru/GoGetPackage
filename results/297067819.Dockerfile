[app/sources/297067819.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:09e56d938f1ef1065a491ddbd374dd181b52c33cfba600493bab017bfb7f724f" [label="local://context" shape="ellipse"];
  "sha256:67d85837a084cb52c8347e43e03988e54e8b95e5e3c76c05766e7038b6c3ed29" [label="copy{src=/gopath/bin/gif-maker, dest=/gif-maker}" shape="note"];
  "sha256:2ae98c760715de9b38f29335d5779b52993089e9d584c684fbf7d48a0aaad7cc" [label="sha256:2ae98c760715de9b38f29335d5779b52993089e9d584c684fbf7d48a0aaad7cc" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:67d85837a084cb52c8347e43e03988e54e8b95e5e3c76c05766e7038b6c3ed29" [label=""];
  "sha256:09e56d938f1ef1065a491ddbd374dd181b52c33cfba600493bab017bfb7f724f" -> "sha256:67d85837a084cb52c8347e43e03988e54e8b95e5e3c76c05766e7038b6c3ed29" [label=""];
  "sha256:67d85837a084cb52c8347e43e03988e54e8b95e5e3c76c05766e7038b6c3ed29" -> "sha256:2ae98c760715de9b38f29335d5779b52993089e9d584c684fbf7d48a0aaad7cc" [label=""];
}

