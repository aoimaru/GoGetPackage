[app/sources/345362107.Dockerfile]
digraph {
  "sha256:a85fa3093d7c42f485e808e15ccb25e86402327025dfbacd851f6cfd41a40ac5" [label="docker-image://docker.io/balenalib/i386-alpine:3.7-run" shape="ellipse"];
  "sha256:0e6e59635e236de5ac4c6b92e616ee1871db2a0452b9770060ccf0be6ac9f03b" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d9b92b94695139290856c9ffc2b37f9975d66351d15d19ba7168f1245e2d5e25" [label="sha256:d9b92b94695139290856c9ffc2b37f9975d66351d15d19ba7168f1245e2d5e25" shape="plaintext"];
  "sha256:a85fa3093d7c42f485e808e15ccb25e86402327025dfbacd851f6cfd41a40ac5" -> "sha256:0e6e59635e236de5ac4c6b92e616ee1871db2a0452b9770060ccf0be6ac9f03b" [label=""];
  "sha256:0e6e59635e236de5ac4c6b92e616ee1871db2a0452b9770060ccf0be6ac9f03b" -> "sha256:d9b92b94695139290856c9ffc2b37f9975d66351d15d19ba7168f1245e2d5e25" [label=""];
}

