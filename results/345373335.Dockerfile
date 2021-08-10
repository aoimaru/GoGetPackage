[app/sources/345373335.Dockerfile]
digraph {
  "sha256:f94cfea4d25dc44cb72a4392b8e20151b28604e76f5e4827e114581e329255fb" [label="docker-image://docker.io/balenalib/jetson-tx2-alpine:3.6-build" shape="ellipse"];
  "sha256:245bdfc5393971fdd55058c132546714e9a360cde3f51a82abbfe34316cc2243" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c1baadf2a9c54176cdfa6e4d2fd77f933bc59c644077528e1132ad4cb8fc3c15" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:c9353a9c433f7ccb0947cffeb8723d8343ce505eaa3fa36855cfb5364e6c0996" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b1a2e3505aff8e303295c0afc66ab46a1ecaaecabf72e049051e1933ba961e73" [label="mkdir{path=/go}" shape="note"];
  "sha256:3544dc9972908fea7fa06cbdd025e4068745bf2ca318158e9e8018641c6e3755" [label="sha256:3544dc9972908fea7fa06cbdd025e4068745bf2ca318158e9e8018641c6e3755" shape="plaintext"];
  "sha256:f94cfea4d25dc44cb72a4392b8e20151b28604e76f5e4827e114581e329255fb" -> "sha256:245bdfc5393971fdd55058c132546714e9a360cde3f51a82abbfe34316cc2243" [label=""];
  "sha256:245bdfc5393971fdd55058c132546714e9a360cde3f51a82abbfe34316cc2243" -> "sha256:c1baadf2a9c54176cdfa6e4d2fd77f933bc59c644077528e1132ad4cb8fc3c15" [label=""];
  "sha256:c1baadf2a9c54176cdfa6e4d2fd77f933bc59c644077528e1132ad4cb8fc3c15" -> "sha256:c9353a9c433f7ccb0947cffeb8723d8343ce505eaa3fa36855cfb5364e6c0996" [label=""];
  "sha256:c9353a9c433f7ccb0947cffeb8723d8343ce505eaa3fa36855cfb5364e6c0996" -> "sha256:b1a2e3505aff8e303295c0afc66ab46a1ecaaecabf72e049051e1933ba961e73" [label=""];
  "sha256:b1a2e3505aff8e303295c0afc66ab46a1ecaaecabf72e049051e1933ba961e73" -> "sha256:3544dc9972908fea7fa06cbdd025e4068745bf2ca318158e9e8018641c6e3755" [label=""];
}

