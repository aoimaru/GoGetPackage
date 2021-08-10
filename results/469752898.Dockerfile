[app/sources/469752898.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:61760a572d2064301c8eb39b1c9061030d6bd3b5edfa2420f630062b1531be08" [label="local://context" shape="ellipse"];
  "sha256:02b59c0154be619fcdf5c0b9b67d74d3eb570290a1b5ae65d2f916b46ae2f1e5" [label="copy{src=/kube-aggregator, dest=/}" shape="note"];
  "sha256:ca3624f307d91ef51034bb9e62fbaf2895a0dec88fbf204d90a67314f13005ac" [label="sha256:ca3624f307d91ef51034bb9e62fbaf2895a0dec88fbf204d90a67314f13005ac" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:02b59c0154be619fcdf5c0b9b67d74d3eb570290a1b5ae65d2f916b46ae2f1e5" [label=""];
  "sha256:61760a572d2064301c8eb39b1c9061030d6bd3b5edfa2420f630062b1531be08" -> "sha256:02b59c0154be619fcdf5c0b9b67d74d3eb570290a1b5ae65d2f916b46ae2f1e5" [label=""];
  "sha256:02b59c0154be619fcdf5c0b9b67d74d3eb570290a1b5ae65d2f916b46ae2f1e5" -> "sha256:ca3624f307d91ef51034bb9e62fbaf2895a0dec88fbf204d90a67314f13005ac" [label=""];
}

