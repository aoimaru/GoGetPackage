[app/sources/368041116.Dockerfile]
digraph {
  "sha256:fe2a09ba68e8f019a7b1a6ceefc326cf7fef624efbc20c4df587bc2ce5419d3c" [label="docker-image://docker.io/andrewd/osxcross:latest" shape="ellipse"];
  "sha256:f981895afc8ec51ace2db12d183ad7584ad5d680a5b76c71e8663f8d6ccead37" [label="local://context" shape="ellipse"];
  "sha256:c9d37b5aab74aa74e7300e634f5a39cd42ab0187c66e29ba4ac67cbabdb5c219" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:2d9663e30584da471b98294b810a8ed9048522d5b8c5984de8b75e28fc7d8e54" [label="sha256:2d9663e30584da471b98294b810a8ed9048522d5b8c5984de8b75e28fc7d8e54" shape="plaintext"];
  "sha256:fe2a09ba68e8f019a7b1a6ceefc326cf7fef624efbc20c4df587bc2ce5419d3c" -> "sha256:c9d37b5aab74aa74e7300e634f5a39cd42ab0187c66e29ba4ac67cbabdb5c219" [label=""];
  "sha256:f981895afc8ec51ace2db12d183ad7584ad5d680a5b76c71e8663f8d6ccead37" -> "sha256:c9d37b5aab74aa74e7300e634f5a39cd42ab0187c66e29ba4ac67cbabdb5c219" [label=""];
  "sha256:c9d37b5aab74aa74e7300e634f5a39cd42ab0187c66e29ba4ac67cbabdb5c219" -> "sha256:2d9663e30584da471b98294b810a8ed9048522d5b8c5984de8b75e28fc7d8e54" [label=""];
}

