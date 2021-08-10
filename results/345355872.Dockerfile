[app/sources/345355872.Dockerfile]
digraph {
  "sha256:e6fc351d6449a257fb816cf96283ce5ade30430c3739e51a4c18e3e7fca892ad" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.8-run" shape="ellipse"];
  "sha256:a5ff69c04884a1446b52b5fd6a16d87e549d3bf831daec448c2db5a9b2343a36" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:771ab265f23229513448e6eb89758c48cfc5b7af9b0b27c63607d85833990623" [label="sha256:771ab265f23229513448e6eb89758c48cfc5b7af9b0b27c63607d85833990623" shape="plaintext"];
  "sha256:e6fc351d6449a257fb816cf96283ce5ade30430c3739e51a4c18e3e7fca892ad" -> "sha256:a5ff69c04884a1446b52b5fd6a16d87e549d3bf831daec448c2db5a9b2343a36" [label=""];
  "sha256:a5ff69c04884a1446b52b5fd6a16d87e549d3bf831daec448c2db5a9b2343a36" -> "sha256:771ab265f23229513448e6eb89758c48cfc5b7af9b0b27c63607d85833990623" [label=""];
}

