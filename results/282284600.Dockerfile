[app/sources/282284600.Dockerfile]
digraph {
  "sha256:cbc7c0defcfb5b38242f24ed8edab18fd1790078d94eb62ec7360a6788983a6f" [label="docker-image://docker.io/library/golang:1.9.4-alpine3.7" shape="ellipse"];
  "sha256:584fb02b873d4ed9bb071ce9334cd5b52597b441fdde23493706df679ea3ac24" [label="local://context" shape="ellipse"];
  "sha256:d00535a8bb8a41507683d8b6fb27932c456625b8f955d01ab6bb41f54038344d" [label="copy{src=/build/*-linux-amd64, dest=/go/bin/elasticlicense}" shape="note"];
  "sha256:42b4cde1b561462e93560b038bdc0d268f36a9c158db7783c78a7161c298ae8a" [label="sha256:42b4cde1b561462e93560b038bdc0d268f36a9c158db7783c78a7161c298ae8a" shape="plaintext"];
  "sha256:cbc7c0defcfb5b38242f24ed8edab18fd1790078d94eb62ec7360a6788983a6f" -> "sha256:d00535a8bb8a41507683d8b6fb27932c456625b8f955d01ab6bb41f54038344d" [label=""];
  "sha256:584fb02b873d4ed9bb071ce9334cd5b52597b441fdde23493706df679ea3ac24" -> "sha256:d00535a8bb8a41507683d8b6fb27932c456625b8f955d01ab6bb41f54038344d" [label=""];
  "sha256:d00535a8bb8a41507683d8b6fb27932c456625b8f955d01ab6bb41f54038344d" -> "sha256:42b4cde1b561462e93560b038bdc0d268f36a9c158db7783c78a7161c298ae8a" [label=""];
}

