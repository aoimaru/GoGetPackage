[app/sources/316608784.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:bf547841988af26e00578a5d3cb164b2ee61463030dc9b8b4112d7b59c3483a7" [label="local://context" shape="ellipse"];
  "sha256:a3f5040c13f408a2e732c79596e68c77f64a29613b182a2a6fd382f7408d58e8" [label="copy{src=/kube-aggregator, dest=/}" shape="note"];
  "sha256:9724c66d826ecaf5b909467aeac562d3d48ad42ec7a1c6e5e34c09a78fc9bd80" [label="sha256:9724c66d826ecaf5b909467aeac562d3d48ad42ec7a1c6e5e34c09a78fc9bd80" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:a3f5040c13f408a2e732c79596e68c77f64a29613b182a2a6fd382f7408d58e8" [label=""];
  "sha256:bf547841988af26e00578a5d3cb164b2ee61463030dc9b8b4112d7b59c3483a7" -> "sha256:a3f5040c13f408a2e732c79596e68c77f64a29613b182a2a6fd382f7408d58e8" [label=""];
  "sha256:a3f5040c13f408a2e732c79596e68c77f64a29613b182a2a6fd382f7408d58e8" -> "sha256:9724c66d826ecaf5b909467aeac562d3d48ad42ec7a1c6e5e34c09a78fc9bd80" [label=""];
}

