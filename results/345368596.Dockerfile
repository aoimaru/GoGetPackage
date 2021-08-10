[app/sources/345368596.Dockerfile]
digraph {
  "sha256:b599c4823bc28bfa23a8e7019a319c98df6174a9b64f4ea64f7e99dc24eff99c" [label="docker-image://docker.io/balenalib/beagleboard-xm-fedora:28-build" shape="ellipse"];
  "sha256:a758e7f38b53c71271e0e2f2b6352ce655010eeb9f9fcc60cc818851e800e2c8" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:86ef0d3bb16672e713a7a3f2e9a07e5da3f867c33d87568f74d935b2486e48b6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c2669810169ecc08eb3f1275af56813d2d93dce8e9f29606f07d55c22b830a78" [label="mkdir{path=/go}" shape="note"];
  "sha256:8c03ad9efd0f691287ed3deacca282491f7b6e1418b133f17fdc77b871aa73fa" [label="sha256:8c03ad9efd0f691287ed3deacca282491f7b6e1418b133f17fdc77b871aa73fa" shape="plaintext"];
  "sha256:b599c4823bc28bfa23a8e7019a319c98df6174a9b64f4ea64f7e99dc24eff99c" -> "sha256:a758e7f38b53c71271e0e2f2b6352ce655010eeb9f9fcc60cc818851e800e2c8" [label=""];
  "sha256:a758e7f38b53c71271e0e2f2b6352ce655010eeb9f9fcc60cc818851e800e2c8" -> "sha256:86ef0d3bb16672e713a7a3f2e9a07e5da3f867c33d87568f74d935b2486e48b6" [label=""];
  "sha256:86ef0d3bb16672e713a7a3f2e9a07e5da3f867c33d87568f74d935b2486e48b6" -> "sha256:c2669810169ecc08eb3f1275af56813d2d93dce8e9f29606f07d55c22b830a78" [label=""];
  "sha256:c2669810169ecc08eb3f1275af56813d2d93dce8e9f29606f07d55c22b830a78" -> "sha256:8c03ad9efd0f691287ed3deacca282491f7b6e1418b133f17fdc77b871aa73fa" [label=""];
}

