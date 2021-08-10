[app/sources/345371186.Dockerfile]
digraph {
  "sha256:050f75d11903da6aada29aab7b95974f9b3090263bcc73005fffea750751887a" [label="docker-image://docker.io/balenalib/blackboard-tx2-alpine:3.6-build" shape="ellipse"];
  "sha256:6ddd445a8ace656ca5d9351376a56ce44ae4de06409fb1bd250b21e8b18c8b8a" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:85a822384bcb82b905e2f635b4fa281db96bf15c11935b8abe9323e49b4e0deb" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:555cf0fdda02fbc7c3566cff04ee09719843f14f28cae7b42c883e5762989079" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:dea6f68e9579de07fd1591c50c5981afbca80fabe4738a0b41df2df3d32245e3" [label="mkdir{path=/go}" shape="note"];
  "sha256:b0a8367dad93ea274550aed424197488c0c3e7129b3155262e5fbb54ace0571b" [label="sha256:b0a8367dad93ea274550aed424197488c0c3e7129b3155262e5fbb54ace0571b" shape="plaintext"];
  "sha256:050f75d11903da6aada29aab7b95974f9b3090263bcc73005fffea750751887a" -> "sha256:6ddd445a8ace656ca5d9351376a56ce44ae4de06409fb1bd250b21e8b18c8b8a" [label=""];
  "sha256:6ddd445a8ace656ca5d9351376a56ce44ae4de06409fb1bd250b21e8b18c8b8a" -> "sha256:85a822384bcb82b905e2f635b4fa281db96bf15c11935b8abe9323e49b4e0deb" [label=""];
  "sha256:85a822384bcb82b905e2f635b4fa281db96bf15c11935b8abe9323e49b4e0deb" -> "sha256:555cf0fdda02fbc7c3566cff04ee09719843f14f28cae7b42c883e5762989079" [label=""];
  "sha256:555cf0fdda02fbc7c3566cff04ee09719843f14f28cae7b42c883e5762989079" -> "sha256:dea6f68e9579de07fd1591c50c5981afbca80fabe4738a0b41df2df3d32245e3" [label=""];
  "sha256:dea6f68e9579de07fd1591c50c5981afbca80fabe4738a0b41df2df3d32245e3" -> "sha256:b0a8367dad93ea274550aed424197488c0c3e7129b3155262e5fbb54ace0571b" [label=""];
}

