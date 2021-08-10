[app/sources/345360360.Dockerfile]
digraph {
  "sha256:229b540122e4eac0303253fc356088bf9e336e2aa0f772671fadd0e029d17810" [label="docker-image://docker.io/balenalib/srd3-tx2-fedora:29-build" shape="ellipse"];
  "sha256:0238b629188c8b0425f2f7af6c019ede976350f6ff8328369a9e006ed8bd2341" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:5fccb612ea52e8e88e9748a08a3330faa402e1eb710c3f55df30e1f3b7a81e72" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:94943603019074e3c018e0b75b4759fadec88677da960a831826210e702d6bed" [label="mkdir{path=/go}" shape="note"];
  "sha256:0c457b0de9ebbb6c9b1e9e4ae81faa09b422ec48c3ce243c96e2846326ccbd5e" [label="sha256:0c457b0de9ebbb6c9b1e9e4ae81faa09b422ec48c3ce243c96e2846326ccbd5e" shape="plaintext"];
  "sha256:229b540122e4eac0303253fc356088bf9e336e2aa0f772671fadd0e029d17810" -> "sha256:0238b629188c8b0425f2f7af6c019ede976350f6ff8328369a9e006ed8bd2341" [label=""];
  "sha256:0238b629188c8b0425f2f7af6c019ede976350f6ff8328369a9e006ed8bd2341" -> "sha256:5fccb612ea52e8e88e9748a08a3330faa402e1eb710c3f55df30e1f3b7a81e72" [label=""];
  "sha256:5fccb612ea52e8e88e9748a08a3330faa402e1eb710c3f55df30e1f3b7a81e72" -> "sha256:94943603019074e3c018e0b75b4759fadec88677da960a831826210e702d6bed" [label=""];
  "sha256:94943603019074e3c018e0b75b4759fadec88677da960a831826210e702d6bed" -> "sha256:0c457b0de9ebbb6c9b1e9e4ae81faa09b422ec48c3ce243c96e2846326ccbd5e" [label=""];
}

