[app/sources/345357843.Dockerfile]
digraph {
  "sha256:7c131c778fad2ab21bc5c70def9385820d4f616f252d10ba890830f572b973d8" [label="docker-image://docker.io/balenalib/qemux86-alpine:3.7-build" shape="ellipse"];
  "sha256:24e32d6b360055b350e122787f658245792aef8e97a5dd12bdce37377a805565" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:38127f01f841f7be6a6ba7df836f9a740b15a5bdcce6df29b1541d8dd301e919" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"a067180c91867b974959be8f9f5ed76a9da2c111f6481a79fcd573b8f64c58f5  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz" shape="box"];
  "sha256:0f79de4ec9ad22c9fcff886932641a50aeaa52d88600746d244f07c4a2e2d3cc" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:bab3b4fa5bfc5584e7f29f7562b587f22d3c1fc1d776afbe161bcdf6527bf261" [label="mkdir{path=/go}" shape="note"];
  "sha256:54916735a74676f01aac226a185a995bfa975625876320d3b8105831a34aff2a" [label="sha256:54916735a74676f01aac226a185a995bfa975625876320d3b8105831a34aff2a" shape="plaintext"];
  "sha256:7c131c778fad2ab21bc5c70def9385820d4f616f252d10ba890830f572b973d8" -> "sha256:24e32d6b360055b350e122787f658245792aef8e97a5dd12bdce37377a805565" [label=""];
  "sha256:24e32d6b360055b350e122787f658245792aef8e97a5dd12bdce37377a805565" -> "sha256:38127f01f841f7be6a6ba7df836f9a740b15a5bdcce6df29b1541d8dd301e919" [label=""];
  "sha256:38127f01f841f7be6a6ba7df836f9a740b15a5bdcce6df29b1541d8dd301e919" -> "sha256:0f79de4ec9ad22c9fcff886932641a50aeaa52d88600746d244f07c4a2e2d3cc" [label=""];
  "sha256:0f79de4ec9ad22c9fcff886932641a50aeaa52d88600746d244f07c4a2e2d3cc" -> "sha256:bab3b4fa5bfc5584e7f29f7562b587f22d3c1fc1d776afbe161bcdf6527bf261" [label=""];
  "sha256:bab3b4fa5bfc5584e7f29f7562b587f22d3c1fc1d776afbe161bcdf6527bf261" -> "sha256:54916735a74676f01aac226a185a995bfa975625876320d3b8105831a34aff2a" [label=""];
}

