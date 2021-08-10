[app/sources/345359932.Dockerfile]
digraph {
  "sha256:408cd86de3efae9088454132b8e283aa2670b20fc41bc8396f3fb871e0328f70" [label="docker-image://docker.io/balenalib/rpi-alpine:3.9-build" shape="ellipse"];
  "sha256:b8062ad34bea703660a911acb19abaa38751f06145551ba226e7bf4e50c5e5eb" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:65527a97663eff7c61708d07c4848cabf0a4fb52e1b13a41d2155fcc8708449c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armhf.tar.gz\" \t&& echo \"c79fb21d7976753df9d59a055309db46558f7fe99a164ea7f1e87af577633da1  go$GO_VERSION.linux-alpine-armhf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armhf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armhf.tar.gz" shape="box"];
  "sha256:3590646327a0587d641a6240c30f30c023d1a8953cb11446bb4925820d76546c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:171ce5366d6b2302406fe2d53a9c0f7c3629a56744a591dcd5586304740918c7" [label="mkdir{path=/go}" shape="note"];
  "sha256:3b87b8089c135cb5389496cf0872f981bc623197deb8004a764c2667e0a5ba94" [label="sha256:3b87b8089c135cb5389496cf0872f981bc623197deb8004a764c2667e0a5ba94" shape="plaintext"];
  "sha256:408cd86de3efae9088454132b8e283aa2670b20fc41bc8396f3fb871e0328f70" -> "sha256:b8062ad34bea703660a911acb19abaa38751f06145551ba226e7bf4e50c5e5eb" [label=""];
  "sha256:b8062ad34bea703660a911acb19abaa38751f06145551ba226e7bf4e50c5e5eb" -> "sha256:65527a97663eff7c61708d07c4848cabf0a4fb52e1b13a41d2155fcc8708449c" [label=""];
  "sha256:65527a97663eff7c61708d07c4848cabf0a4fb52e1b13a41d2155fcc8708449c" -> "sha256:3590646327a0587d641a6240c30f30c023d1a8953cb11446bb4925820d76546c" [label=""];
  "sha256:3590646327a0587d641a6240c30f30c023d1a8953cb11446bb4925820d76546c" -> "sha256:171ce5366d6b2302406fe2d53a9c0f7c3629a56744a591dcd5586304740918c7" [label=""];
  "sha256:171ce5366d6b2302406fe2d53a9c0f7c3629a56744a591dcd5586304740918c7" -> "sha256:3b87b8089c135cb5389496cf0872f981bc623197deb8004a764c2667e0a5ba94" [label=""];
}

