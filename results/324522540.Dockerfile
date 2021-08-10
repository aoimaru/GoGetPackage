[app/sources/324522540.Dockerfile]
digraph {
  "sha256:206f4a82baed797f1db49d244d671fb89667c5cd551dde8d4b9fc9b04a29c037" [label="local://context" shape="ellipse"];
  "sha256:6f3cbe7be2d38c232bda6bc5711b0d2c0cc663aede79ace53f3438525bf172d3" [label="docker-image://docker.io/library/node:10.7.0-alpine" shape="ellipse"];
  "sha256:5a6d95e75415b5a7a290f4fd043603772c5f7ac95d527dd8d825dfa70385510f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7b8877cf6d1d536145abc2ee6aad113eb799e8311f7241e74d431e0c976d7195" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:41c9b961010d8c3ccf3c1124a90b40a33b06355967d6386438e0e854f911d500" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6c7abd0c598c8ca341c4195e26ecf007bc0cbfa1a98a65a68f4f4986def8ba4f" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:d690154209036e9e0e31785a705986610e8c03cebdb61ecfc45eca4460cc94a5" [label="sha256:d690154209036e9e0e31785a705986610e8c03cebdb61ecfc45eca4460cc94a5" shape="plaintext"];
  "sha256:6f3cbe7be2d38c232bda6bc5711b0d2c0cc663aede79ace53f3438525bf172d3" -> "sha256:5a6d95e75415b5a7a290f4fd043603772c5f7ac95d527dd8d825dfa70385510f" [label=""];
  "sha256:5a6d95e75415b5a7a290f4fd043603772c5f7ac95d527dd8d825dfa70385510f" -> "sha256:7b8877cf6d1d536145abc2ee6aad113eb799e8311f7241e74d431e0c976d7195" [label=""];
  "sha256:206f4a82baed797f1db49d244d671fb89667c5cd551dde8d4b9fc9b04a29c037" -> "sha256:7b8877cf6d1d536145abc2ee6aad113eb799e8311f7241e74d431e0c976d7195" [label=""];
  "sha256:7b8877cf6d1d536145abc2ee6aad113eb799e8311f7241e74d431e0c976d7195" -> "sha256:41c9b961010d8c3ccf3c1124a90b40a33b06355967d6386438e0e854f911d500" [label=""];
  "sha256:41c9b961010d8c3ccf3c1124a90b40a33b06355967d6386438e0e854f911d500" -> "sha256:6c7abd0c598c8ca341c4195e26ecf007bc0cbfa1a98a65a68f4f4986def8ba4f" [label=""];
  "sha256:206f4a82baed797f1db49d244d671fb89667c5cd551dde8d4b9fc9b04a29c037" -> "sha256:6c7abd0c598c8ca341c4195e26ecf007bc0cbfa1a98a65a68f4f4986def8ba4f" [label=""];
  "sha256:6c7abd0c598c8ca341c4195e26ecf007bc0cbfa1a98a65a68f4f4986def8ba4f" -> "sha256:d690154209036e9e0e31785a705986610e8c03cebdb61ecfc45eca4460cc94a5" [label=""];
}

