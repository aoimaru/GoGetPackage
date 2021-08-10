[app/sources/345362399.Dockerfile]
digraph {
  "sha256:a8b7fd9403d62f88303a87d1e2cbc25651f68f5721b8c6063ea3b7ed6aba7dec" [label="docker-image://docker.io/balenalib/aarch64-alpine:edge-run@sha256:e3271389d6fa70ee5b161c99048fade3aed648195bc0e36f2ab578d76f905e8c" shape="ellipse"];
  "sha256:e59ff147786c19000fb9f8ea6c6e280399bb4050ae9452be887da6352bca4006" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ed1bfd6c2e4d97f874f4cdcc4bbb6cf438a3ff3be6bdddb6752fbc702eb782ef" [label="sha256:ed1bfd6c2e4d97f874f4cdcc4bbb6cf438a3ff3be6bdddb6752fbc702eb782ef" shape="plaintext"];
  "sha256:a8b7fd9403d62f88303a87d1e2cbc25651f68f5721b8c6063ea3b7ed6aba7dec" -> "sha256:e59ff147786c19000fb9f8ea6c6e280399bb4050ae9452be887da6352bca4006" [label=""];
  "sha256:e59ff147786c19000fb9f8ea6c6e280399bb4050ae9452be887da6352bca4006" -> "sha256:ed1bfd6c2e4d97f874f4cdcc4bbb6cf438a3ff3be6bdddb6752fbc702eb782ef" [label=""];
}

