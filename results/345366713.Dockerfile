[app/sources/345366713.Dockerfile]
digraph {
  "sha256:a98e8c09fc8c91bc61acfa7ad7070fafbe764ea2b4c544e3c4d95a1b8003c844" [label="docker-image://docker.io/balenalib/intel-edison-alpine:3.8-run" shape="ellipse"];
  "sha256:75ad0b64a26a12ecc43c88506887761ad85734b9ad2b6a51814f4c4cdab6318e" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:cf2aa3393e253cbfbe3652c90db792a4340e98838184b5b9c0ee86e3ca8e7c0c" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:afdb7f699239b7f734c46f33b0d86c41ab90c8d6533818e6b66008769abaa952" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"7f91d1816d92bdd52693555403be54d1b868df4e7a70074effab8d0d80d6ab7f  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:b770421eb72ed99e77fdd86fd27c70fea1f1d54e75915ba9e0a07e757760e9e6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a462b0a9bc41e0beaa2947694f90f51fe3d31ac502f753e611f6afba863a8676" [label="mkdir{path=/go}" shape="note"];
  "sha256:2afc67856972f4611498d767a86a503133cb12f4d466c8d2f4e18fc96a6a6e2d" [label="sha256:2afc67856972f4611498d767a86a503133cb12f4d466c8d2f4e18fc96a6a6e2d" shape="plaintext"];
  "sha256:a98e8c09fc8c91bc61acfa7ad7070fafbe764ea2b4c544e3c4d95a1b8003c844" -> "sha256:75ad0b64a26a12ecc43c88506887761ad85734b9ad2b6a51814f4c4cdab6318e" [label=""];
  "sha256:75ad0b64a26a12ecc43c88506887761ad85734b9ad2b6a51814f4c4cdab6318e" -> "sha256:cf2aa3393e253cbfbe3652c90db792a4340e98838184b5b9c0ee86e3ca8e7c0c" [label=""];
  "sha256:cf2aa3393e253cbfbe3652c90db792a4340e98838184b5b9c0ee86e3ca8e7c0c" -> "sha256:afdb7f699239b7f734c46f33b0d86c41ab90c8d6533818e6b66008769abaa952" [label=""];
  "sha256:afdb7f699239b7f734c46f33b0d86c41ab90c8d6533818e6b66008769abaa952" -> "sha256:b770421eb72ed99e77fdd86fd27c70fea1f1d54e75915ba9e0a07e757760e9e6" [label=""];
  "sha256:b770421eb72ed99e77fdd86fd27c70fea1f1d54e75915ba9e0a07e757760e9e6" -> "sha256:a462b0a9bc41e0beaa2947694f90f51fe3d31ac502f753e611f6afba863a8676" [label=""];
  "sha256:a462b0a9bc41e0beaa2947694f90f51fe3d31ac502f753e611f6afba863a8676" -> "sha256:2afc67856972f4611498d767a86a503133cb12f4d466c8d2f4e18fc96a6a6e2d" [label=""];
}

