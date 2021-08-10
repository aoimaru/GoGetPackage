[app/sources/345366210.Dockerfile]
digraph {
  "sha256:70c1abd5a3e0f32bc8bfa2117f4fbcb84c40b944b8e75a685fc6dd30f411f65b" [label="docker-image://docker.io/balenalib/hummingboard-ubuntu:trusty-build" shape="ellipse"];
  "sha256:cb9ccffaf361ea4c76568d863eec6b9b5c732842ad4439d250234bb3fc8fbed6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:fc0a7b36cdb09ebfacd8d91d73edeab5701c6f74d627dd24b4de585dd0baf266" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5571a2647d81ea8f1c45c0f26702b27065c23fa18f485fd0dcef4bc5b22c9c72" [label="mkdir{path=/go}" shape="note"];
  "sha256:55de9b92681e3c29c53df8300cb2e085921cc8964b619ca0074d3031e557f6f8" [label="sha256:55de9b92681e3c29c53df8300cb2e085921cc8964b619ca0074d3031e557f6f8" shape="plaintext"];
  "sha256:70c1abd5a3e0f32bc8bfa2117f4fbcb84c40b944b8e75a685fc6dd30f411f65b" -> "sha256:cb9ccffaf361ea4c76568d863eec6b9b5c732842ad4439d250234bb3fc8fbed6" [label=""];
  "sha256:cb9ccffaf361ea4c76568d863eec6b9b5c732842ad4439d250234bb3fc8fbed6" -> "sha256:fc0a7b36cdb09ebfacd8d91d73edeab5701c6f74d627dd24b4de585dd0baf266" [label=""];
  "sha256:fc0a7b36cdb09ebfacd8d91d73edeab5701c6f74d627dd24b4de585dd0baf266" -> "sha256:5571a2647d81ea8f1c45c0f26702b27065c23fa18f485fd0dcef4bc5b22c9c72" [label=""];
  "sha256:5571a2647d81ea8f1c45c0f26702b27065c23fa18f485fd0dcef4bc5b22c9c72" -> "sha256:55de9b92681e3c29c53df8300cb2e085921cc8964b619ca0074d3031e557f6f8" [label=""];
}

