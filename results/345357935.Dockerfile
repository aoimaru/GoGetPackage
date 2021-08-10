[app/sources/345357935.Dockerfile]
digraph {
  "sha256:6b0c9ec6b5b50a67cc423a3404b70ae3f13ae29764315382662c4fce6af92bbd" [label="docker-image://docker.io/balenalib/raspberry-pi-alpine:3.8-build" shape="ellipse"];
  "sha256:e2db32ac3eae1ea7a173f2a2340d87d479a6c9754176b31c81c4683f3c1eeec7" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:d82ba419b36c8926ece36a6de9e841aa64cb24b64485a15ffd08191640194bd6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armhf.tar.gz\" \t&& echo \"c79fb21d7976753df9d59a055309db46558f7fe99a164ea7f1e87af577633da1  go$GO_VERSION.linux-alpine-armhf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armhf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armhf.tar.gz" shape="box"];
  "sha256:3a5fb6c6b16cb9666547ab322eb0d933ba534992f406f59ac2b176409d609f31" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:68187db31a4a0c5122d7713305bccda342cce7f056ab81c355f08816888ccd38" [label="mkdir{path=/go}" shape="note"];
  "sha256:c0e39852bce8f7f93ecf49b0a19d1517c7604707c158a9d115c403da0433af50" [label="sha256:c0e39852bce8f7f93ecf49b0a19d1517c7604707c158a9d115c403da0433af50" shape="plaintext"];
  "sha256:6b0c9ec6b5b50a67cc423a3404b70ae3f13ae29764315382662c4fce6af92bbd" -> "sha256:e2db32ac3eae1ea7a173f2a2340d87d479a6c9754176b31c81c4683f3c1eeec7" [label=""];
  "sha256:e2db32ac3eae1ea7a173f2a2340d87d479a6c9754176b31c81c4683f3c1eeec7" -> "sha256:d82ba419b36c8926ece36a6de9e841aa64cb24b64485a15ffd08191640194bd6" [label=""];
  "sha256:d82ba419b36c8926ece36a6de9e841aa64cb24b64485a15ffd08191640194bd6" -> "sha256:3a5fb6c6b16cb9666547ab322eb0d933ba534992f406f59ac2b176409d609f31" [label=""];
  "sha256:3a5fb6c6b16cb9666547ab322eb0d933ba534992f406f59ac2b176409d609f31" -> "sha256:68187db31a4a0c5122d7713305bccda342cce7f056ab81c355f08816888ccd38" [label=""];
  "sha256:68187db31a4a0c5122d7713305bccda342cce7f056ab81c355f08816888ccd38" -> "sha256:c0e39852bce8f7f93ecf49b0a19d1517c7604707c158a9d115c403da0433af50" [label=""];
}

