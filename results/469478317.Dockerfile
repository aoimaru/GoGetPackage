[app/sources/469478317.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:6f60fbc0a6c637c3d7e6800057b88481c4a5ec4b6b48eeec92bb3b8185d9127b" [label="local://context" shape="ellipse"];
  "sha256:bac20617d7446ce0723c553775d9bc59f3d96b6f8b56da631e789a621e338f50" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:f115772814f46a8356bd0e2e577cff2cfac1e8472c61f71c9075662d337fb9ed" [label="sha256:f115772814f46a8356bd0e2e577cff2cfac1e8472c61f71c9075662d337fb9ed" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:bac20617d7446ce0723c553775d9bc59f3d96b6f8b56da631e789a621e338f50" [label=""];
  "sha256:6f60fbc0a6c637c3d7e6800057b88481c4a5ec4b6b48eeec92bb3b8185d9127b" -> "sha256:bac20617d7446ce0723c553775d9bc59f3d96b6f8b56da631e789a621e338f50" [label=""];
  "sha256:bac20617d7446ce0723c553775d9bc59f3d96b6f8b56da631e789a621e338f50" -> "sha256:f115772814f46a8356bd0e2e577cff2cfac1e8472c61f71c9075662d337fb9ed" [label=""];
}

