[app/sources/345371210.Dockerfile]
digraph {
  "sha256:bb3d412d1c654cc0727d9cc30751a15be16190d45f6d87fc6db4a033ee6dc69b" [label="docker-image://docker.io/balenalib/blackboard-tx2-alpine:edge-build" shape="ellipse"];
  "sha256:2ba641ac717c2115693e9cad770b690e46758a1ddaf0a50e7c546b58690f6709" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:035e30ba6b64077e76dc87507926974046e2ed9df28edbe3f766fa15822cc2c6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:4d29ddee96d47ff3fb6dd1475de0e20bc516c94876eac9a28d1d18119ec332cb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d47ffedaf18ca43b260becdfec91fa6fd5f2be281143cb49abb019a9e3aa8f06" [label="mkdir{path=/go}" shape="note"];
  "sha256:81ababe716d01ce7486595492f5dd193f055b9e21cbeaeafa70cc86cea14320d" [label="sha256:81ababe716d01ce7486595492f5dd193f055b9e21cbeaeafa70cc86cea14320d" shape="plaintext"];
  "sha256:bb3d412d1c654cc0727d9cc30751a15be16190d45f6d87fc6db4a033ee6dc69b" -> "sha256:2ba641ac717c2115693e9cad770b690e46758a1ddaf0a50e7c546b58690f6709" [label=""];
  "sha256:2ba641ac717c2115693e9cad770b690e46758a1ddaf0a50e7c546b58690f6709" -> "sha256:035e30ba6b64077e76dc87507926974046e2ed9df28edbe3f766fa15822cc2c6" [label=""];
  "sha256:035e30ba6b64077e76dc87507926974046e2ed9df28edbe3f766fa15822cc2c6" -> "sha256:4d29ddee96d47ff3fb6dd1475de0e20bc516c94876eac9a28d1d18119ec332cb" [label=""];
  "sha256:4d29ddee96d47ff3fb6dd1475de0e20bc516c94876eac9a28d1d18119ec332cb" -> "sha256:d47ffedaf18ca43b260becdfec91fa6fd5f2be281143cb49abb019a9e3aa8f06" [label=""];
  "sha256:d47ffedaf18ca43b260becdfec91fa6fd5f2be281143cb49abb019a9e3aa8f06" -> "sha256:81ababe716d01ce7486595492f5dd193f055b9e21cbeaeafa70cc86cea14320d" [label=""];
}

