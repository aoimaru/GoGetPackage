[app/sources/345358097.Dockerfile]
digraph {
  "sha256:077e4a0652ef6d8234fddad3bb9f53950c2ae57a5bd39d3efde03aba15cb6551" [label="docker-image://docker.io/balenalib/raspberrypi3-64-alpine:3.8-build" shape="ellipse"];
  "sha256:df6f857fcd4bb9bcb81e47f8291345e38a2177f0173f8057184c35d5583e3e38" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4411df8afcd0a624afa3644c8db06047d5616deabc56beffc48ba529e8a17f02" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"3c8658ee1761b83c05027e1d60d13857d64e3d116efe0ebe9dcce353fa0d1232  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:f5dc64477794712a74ff20fde952d1404f7cd1e115d709ae9a0dfc8f1ad62198" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:85b6497db06185901c5cd843924f71b59d5427176db1b54ad318fa366d5b7fa0" [label="mkdir{path=/go}" shape="note"];
  "sha256:ad40793f01218f70a01b1f818f835a0f5f1d4fad4743b0dcfe70c6098742b309" [label="sha256:ad40793f01218f70a01b1f818f835a0f5f1d4fad4743b0dcfe70c6098742b309" shape="plaintext"];
  "sha256:077e4a0652ef6d8234fddad3bb9f53950c2ae57a5bd39d3efde03aba15cb6551" -> "sha256:df6f857fcd4bb9bcb81e47f8291345e38a2177f0173f8057184c35d5583e3e38" [label=""];
  "sha256:df6f857fcd4bb9bcb81e47f8291345e38a2177f0173f8057184c35d5583e3e38" -> "sha256:4411df8afcd0a624afa3644c8db06047d5616deabc56beffc48ba529e8a17f02" [label=""];
  "sha256:4411df8afcd0a624afa3644c8db06047d5616deabc56beffc48ba529e8a17f02" -> "sha256:f5dc64477794712a74ff20fde952d1404f7cd1e115d709ae9a0dfc8f1ad62198" [label=""];
  "sha256:f5dc64477794712a74ff20fde952d1404f7cd1e115d709ae9a0dfc8f1ad62198" -> "sha256:85b6497db06185901c5cd843924f71b59d5427176db1b54ad318fa366d5b7fa0" [label=""];
  "sha256:85b6497db06185901c5cd843924f71b59d5427176db1b54ad318fa366d5b7fa0" -> "sha256:ad40793f01218f70a01b1f818f835a0f5f1d4fad4743b0dcfe70c6098742b309" [label=""];
}

