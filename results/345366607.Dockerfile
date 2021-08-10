[app/sources/345366607.Dockerfile]
digraph {
  "sha256:aa9e1644692c20f8b7690cd4d7d85a98ed48f0f40f8daa848e027a377fa382c2" [label="docker-image://docker.io/balenalib/imx8m-var-dart-alpine:3.9-run" shape="ellipse"];
  "sha256:6a1a61760f5c8dda94b1083349cf391c3f35c7a8d4d1d2334727c6c17f1abe76" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:867dde3fb6f6d38defc331f2f81be3f9e710967ce3d07d5dfb33cd59893978d1" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:8a4115ecabde3bb4802890e24f2f2f2488ca940052552e4f1a4d2d29c8be8253" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:07c190199412f4c75cbf793c91d3a641379d71b92bb6a7fa5578b70a024326d3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ca4cd16fa58ff31ae2ca342b468a13c2d644090070f6a8e318f57f9bc47e0488" [label="mkdir{path=/go}" shape="note"];
  "sha256:c6db150258de05d43bf87f92a61baf5685fd574339f4cec76832a582adbb95a8" [label="sha256:c6db150258de05d43bf87f92a61baf5685fd574339f4cec76832a582adbb95a8" shape="plaintext"];
  "sha256:aa9e1644692c20f8b7690cd4d7d85a98ed48f0f40f8daa848e027a377fa382c2" -> "sha256:6a1a61760f5c8dda94b1083349cf391c3f35c7a8d4d1d2334727c6c17f1abe76" [label=""];
  "sha256:6a1a61760f5c8dda94b1083349cf391c3f35c7a8d4d1d2334727c6c17f1abe76" -> "sha256:867dde3fb6f6d38defc331f2f81be3f9e710967ce3d07d5dfb33cd59893978d1" [label=""];
  "sha256:867dde3fb6f6d38defc331f2f81be3f9e710967ce3d07d5dfb33cd59893978d1" -> "sha256:8a4115ecabde3bb4802890e24f2f2f2488ca940052552e4f1a4d2d29c8be8253" [label=""];
  "sha256:8a4115ecabde3bb4802890e24f2f2f2488ca940052552e4f1a4d2d29c8be8253" -> "sha256:07c190199412f4c75cbf793c91d3a641379d71b92bb6a7fa5578b70a024326d3" [label=""];
  "sha256:07c190199412f4c75cbf793c91d3a641379d71b92bb6a7fa5578b70a024326d3" -> "sha256:ca4cd16fa58ff31ae2ca342b468a13c2d644090070f6a8e318f57f9bc47e0488" [label=""];
  "sha256:ca4cd16fa58ff31ae2ca342b468a13c2d644090070f6a8e318f57f9bc47e0488" -> "sha256:c6db150258de05d43bf87f92a61baf5685fd574339f4cec76832a582adbb95a8" [label=""];
}

