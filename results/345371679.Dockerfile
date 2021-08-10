[app/sources/345371679.Dockerfile]
digraph {
  "sha256:3d3f74e299cd87155ba488a2e41992618091c0c3b10130b1bdcea693740f6438" [label="docker-image://docker.io/balenalib/dl-pm6x-alpine:3.5-run" shape="ellipse"];
  "sha256:a64126bd85855757a550bc87443d723f1c51a9dc94916487794517ab8c34e2cf" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4f2283b16e1e02ee69d92232b558bee2e2b911daddb645b849b6f588f0f1d45c" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:f8dd05d55ae124fb98985deec6e9f8336c4ae829f6773f1ec70ddd332b53e073" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:e07cc56a2e3acc92ccc4de01858748016dcb3d7ca9185fe3d68535c7e98394ed" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d4629feedcb5ecb0290ea43c5b9f02a5fb19c4be4bd79066b43694c08f98c166" [label="mkdir{path=/go}" shape="note"];
  "sha256:db27af5dc5631e6386e53d6241486aaa14fc37d1713e3c011bdc9276a06b7463" [label="sha256:db27af5dc5631e6386e53d6241486aaa14fc37d1713e3c011bdc9276a06b7463" shape="plaintext"];
  "sha256:3d3f74e299cd87155ba488a2e41992618091c0c3b10130b1bdcea693740f6438" -> "sha256:a64126bd85855757a550bc87443d723f1c51a9dc94916487794517ab8c34e2cf" [label=""];
  "sha256:a64126bd85855757a550bc87443d723f1c51a9dc94916487794517ab8c34e2cf" -> "sha256:4f2283b16e1e02ee69d92232b558bee2e2b911daddb645b849b6f588f0f1d45c" [label=""];
  "sha256:4f2283b16e1e02ee69d92232b558bee2e2b911daddb645b849b6f588f0f1d45c" -> "sha256:f8dd05d55ae124fb98985deec6e9f8336c4ae829f6773f1ec70ddd332b53e073" [label=""];
  "sha256:f8dd05d55ae124fb98985deec6e9f8336c4ae829f6773f1ec70ddd332b53e073" -> "sha256:e07cc56a2e3acc92ccc4de01858748016dcb3d7ca9185fe3d68535c7e98394ed" [label=""];
  "sha256:e07cc56a2e3acc92ccc4de01858748016dcb3d7ca9185fe3d68535c7e98394ed" -> "sha256:d4629feedcb5ecb0290ea43c5b9f02a5fb19c4be4bd79066b43694c08f98c166" [label=""];
  "sha256:d4629feedcb5ecb0290ea43c5b9f02a5fb19c4be4bd79066b43694c08f98c166" -> "sha256:db27af5dc5631e6386e53d6241486aaa14fc37d1713e3c011bdc9276a06b7463" [label=""];
}

