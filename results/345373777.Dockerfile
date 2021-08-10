[app/sources/345373777.Dockerfile]
digraph {
  "sha256:a18d9901e94903b05b6b0a383e7cdcdf00f39a78230371e17ca4cbfe49baee5c" [label="docker-image://docker.io/balenalib/nanopc-t4-alpine:3.5-build" shape="ellipse"];
  "sha256:e53781b4f03e3cfa26d0d69803f22263e1da4a02c9d25f6e2d45a408c3dc8445" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:0c03942422724d2bce949f5bf39888fbaa0891109cc20e085a6cbc7f91ada14b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:9b9a0e0d1c48806e252249bb31351fd6cc705b258a48e9c0e2377f8cfd662da0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:24dbbd2817564a92070e21cc7b014de24278fffd37adbc8b6b8be88c5da8e97d" [label="mkdir{path=/go}" shape="note"];
  "sha256:65b5e9a16b6d3bf689454291727a89569c755e5c3e99ba4900aedfdc60fe24d3" [label="sha256:65b5e9a16b6d3bf689454291727a89569c755e5c3e99ba4900aedfdc60fe24d3" shape="plaintext"];
  "sha256:a18d9901e94903b05b6b0a383e7cdcdf00f39a78230371e17ca4cbfe49baee5c" -> "sha256:e53781b4f03e3cfa26d0d69803f22263e1da4a02c9d25f6e2d45a408c3dc8445" [label=""];
  "sha256:e53781b4f03e3cfa26d0d69803f22263e1da4a02c9d25f6e2d45a408c3dc8445" -> "sha256:0c03942422724d2bce949f5bf39888fbaa0891109cc20e085a6cbc7f91ada14b" [label=""];
  "sha256:0c03942422724d2bce949f5bf39888fbaa0891109cc20e085a6cbc7f91ada14b" -> "sha256:9b9a0e0d1c48806e252249bb31351fd6cc705b258a48e9c0e2377f8cfd662da0" [label=""];
  "sha256:9b9a0e0d1c48806e252249bb31351fd6cc705b258a48e9c0e2377f8cfd662da0" -> "sha256:24dbbd2817564a92070e21cc7b014de24278fffd37adbc8b6b8be88c5da8e97d" [label=""];
  "sha256:24dbbd2817564a92070e21cc7b014de24278fffd37adbc8b6b8be88c5da8e97d" -> "sha256:65b5e9a16b6d3bf689454291727a89569c755e5c3e99ba4900aedfdc60fe24d3" [label=""];
}

