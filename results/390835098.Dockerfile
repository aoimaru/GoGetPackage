[app/sources/390835098.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:8ebe57e4dec0cb15e9838df90222443cb763c7bdd13f9a7994196fe22c3acdc4" [label="local://context" shape="ellipse"];
  "sha256:c07b6fa1b809494eb171b6d3544864861f0a9ebc292055802c791a913ae4f70b" [label="copy{src=/post-srv, dest=/post-srv}" shape="note"];
  "sha256:0c49bebba6870ecc971a4c836387dd253d7d7a13babf56eee7a89e13328b0e3f" [label="sha256:0c49bebba6870ecc971a4c836387dd253d7d7a13babf56eee7a89e13328b0e3f" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:c07b6fa1b809494eb171b6d3544864861f0a9ebc292055802c791a913ae4f70b" [label=""];
  "sha256:8ebe57e4dec0cb15e9838df90222443cb763c7bdd13f9a7994196fe22c3acdc4" -> "sha256:c07b6fa1b809494eb171b6d3544864861f0a9ebc292055802c791a913ae4f70b" [label=""];
  "sha256:c07b6fa1b809494eb171b6d3544864861f0a9ebc292055802c791a913ae4f70b" -> "sha256:0c49bebba6870ecc971a4c836387dd253d7d7a13babf56eee7a89e13328b0e3f" [label=""];
}

