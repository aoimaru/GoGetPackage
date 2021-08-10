[app/sources/345365893.Dockerfile]
digraph {
  "sha256:2b11527495d4d586cc9db0f6c3f8cf598eba117708585a64d188a5098dc57732" [label="docker-image://docker.io/balenalib/generic-aarch64-alpine:3.5-run" shape="ellipse"];
  "sha256:51a1d6be2898d87972fe439f524f0302d796d0a5ab14520b5913467503fb645e" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c56d0387255848e92d3d58421cf8ffb789655fa59f098ca61a0fdfcc0db24a7b" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:ee61446f52b6be2322a64174ca297c99ed466c05f48e5e124918379068a2a006" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:7183ceb45ceeef9b4544b813f24cd5fb422bca1bc0b0aadee3e89dc3432ac3ab" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1d5f37830c45d24ee5bcdece213e873c3ff36be6ddff044996f48f9866851d32" [label="mkdir{path=/go}" shape="note"];
  "sha256:f3b95e1ee862220595bb7584695b5b3fe9f0679e640f0a9a150be0b13222e78b" [label="sha256:f3b95e1ee862220595bb7584695b5b3fe9f0679e640f0a9a150be0b13222e78b" shape="plaintext"];
  "sha256:2b11527495d4d586cc9db0f6c3f8cf598eba117708585a64d188a5098dc57732" -> "sha256:51a1d6be2898d87972fe439f524f0302d796d0a5ab14520b5913467503fb645e" [label=""];
  "sha256:51a1d6be2898d87972fe439f524f0302d796d0a5ab14520b5913467503fb645e" -> "sha256:c56d0387255848e92d3d58421cf8ffb789655fa59f098ca61a0fdfcc0db24a7b" [label=""];
  "sha256:c56d0387255848e92d3d58421cf8ffb789655fa59f098ca61a0fdfcc0db24a7b" -> "sha256:ee61446f52b6be2322a64174ca297c99ed466c05f48e5e124918379068a2a006" [label=""];
  "sha256:ee61446f52b6be2322a64174ca297c99ed466c05f48e5e124918379068a2a006" -> "sha256:7183ceb45ceeef9b4544b813f24cd5fb422bca1bc0b0aadee3e89dc3432ac3ab" [label=""];
  "sha256:7183ceb45ceeef9b4544b813f24cd5fb422bca1bc0b0aadee3e89dc3432ac3ab" -> "sha256:1d5f37830c45d24ee5bcdece213e873c3ff36be6ddff044996f48f9866851d32" [label=""];
  "sha256:1d5f37830c45d24ee5bcdece213e873c3ff36be6ddff044996f48f9866851d32" -> "sha256:f3b95e1ee862220595bb7584695b5b3fe9f0679e640f0a9a150be0b13222e78b" [label=""];
}

