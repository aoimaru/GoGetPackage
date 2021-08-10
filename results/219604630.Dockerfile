[app/sources/219604630.Dockerfile]
digraph {
  "sha256:b14e2f846839decaf7c3b7adc2aa87c91862e03688964fb7044b46e62d2b5f64" [label="docker-image://docker.io/avsm/mirage:latest" shape="ellipse"];
  "sha256:32cf481d8efd44612632d646fa1edf7b84b98041ca16ecebed16be4864e88ea9" [label="/bin/sh -c opam install mirage-seal" shape="box"];
  "sha256:0392ad9ec451ff1b81184faa0691a435ba8dce463acf45df1a5b26d932944962" [label="sha256:0392ad9ec451ff1b81184faa0691a435ba8dce463acf45df1a5b26d932944962" shape="plaintext"];
  "sha256:b14e2f846839decaf7c3b7adc2aa87c91862e03688964fb7044b46e62d2b5f64" -> "sha256:32cf481d8efd44612632d646fa1edf7b84b98041ca16ecebed16be4864e88ea9" [label=""];
  "sha256:32cf481d8efd44612632d646fa1edf7b84b98041ca16ecebed16be4864e88ea9" -> "sha256:0392ad9ec451ff1b81184faa0691a435ba8dce463acf45df1a5b26d932944962" [label=""];
}

