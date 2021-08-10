[app/sources/345357590.Dockerfile]
digraph {
  "sha256:be14fcd4d2fcf76f78f2bac5530dd6a6bdeec1cb83dd26ce10f769f6b7292a33" [label="docker-image://docker.io/balenalib/parallella-debian:sid-build@sha256:06b2b6835ad68dc59c9a2961524945dbda086fd92c31792e6c92382f7513fc2a" shape="ellipse"];
  "sha256:289d63f68305c5de2ae16fe37cad878b89ea82bf32f00f8ceb97bc9e3907c3fe" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:557540bd4c6d2a4a3809b15dc74897d9924956ec4f85cc69fe65e024603936b9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:64a93bbbc6caca9780e2a7887bced9061bf37c85b49a6333549b2a0399ae1d68" [label="mkdir{path=/go}" shape="note"];
  "sha256:661bd0183fa2e61afef5a731117cccfa774157283bc302f8c1ebb569c01053e5" [label="sha256:661bd0183fa2e61afef5a731117cccfa774157283bc302f8c1ebb569c01053e5" shape="plaintext"];
  "sha256:be14fcd4d2fcf76f78f2bac5530dd6a6bdeec1cb83dd26ce10f769f6b7292a33" -> "sha256:289d63f68305c5de2ae16fe37cad878b89ea82bf32f00f8ceb97bc9e3907c3fe" [label=""];
  "sha256:289d63f68305c5de2ae16fe37cad878b89ea82bf32f00f8ceb97bc9e3907c3fe" -> "sha256:557540bd4c6d2a4a3809b15dc74897d9924956ec4f85cc69fe65e024603936b9" [label=""];
  "sha256:557540bd4c6d2a4a3809b15dc74897d9924956ec4f85cc69fe65e024603936b9" -> "sha256:64a93bbbc6caca9780e2a7887bced9061bf37c85b49a6333549b2a0399ae1d68" [label=""];
  "sha256:64a93bbbc6caca9780e2a7887bced9061bf37c85b49a6333549b2a0399ae1d68" -> "sha256:661bd0183fa2e61afef5a731117cccfa774157283bc302f8c1ebb569c01053e5" [label=""];
}

