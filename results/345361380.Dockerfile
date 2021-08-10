[app/sources/345361380.Dockerfile]
digraph {
  "sha256:21220a978c122cffa3a0027fb7ae2cf5e021bb86154a29a967a29cf245fddf57" [label="docker-image://docker.io/balenalib/var-som-mx6-alpine:3.7-build" shape="ellipse"];
  "sha256:a0762a1addb8ce0602c2e4877184540f3cad87df3be04fc19c37594f352b92b2" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:288b2bea2cd59ccf3eb89c36e4cd291eecfc38b99199c13612489bb5c4501b56" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:8da98a4950f4b7e2fe8044f3c12863f2c7d364815f6d1e3896d9e20110c0ae6a" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e26f57d26941101eb12a2f130da94d50454d0d813f28ae627ad50d72ef76dc47" [label="mkdir{path=/go}" shape="note"];
  "sha256:de122b6dceb095e94059f746e2ea99f3638db60c8d60507055597b2e853414bf" [label="sha256:de122b6dceb095e94059f746e2ea99f3638db60c8d60507055597b2e853414bf" shape="plaintext"];
  "sha256:21220a978c122cffa3a0027fb7ae2cf5e021bb86154a29a967a29cf245fddf57" -> "sha256:a0762a1addb8ce0602c2e4877184540f3cad87df3be04fc19c37594f352b92b2" [label=""];
  "sha256:a0762a1addb8ce0602c2e4877184540f3cad87df3be04fc19c37594f352b92b2" -> "sha256:288b2bea2cd59ccf3eb89c36e4cd291eecfc38b99199c13612489bb5c4501b56" [label=""];
  "sha256:288b2bea2cd59ccf3eb89c36e4cd291eecfc38b99199c13612489bb5c4501b56" -> "sha256:8da98a4950f4b7e2fe8044f3c12863f2c7d364815f6d1e3896d9e20110c0ae6a" [label=""];
  "sha256:8da98a4950f4b7e2fe8044f3c12863f2c7d364815f6d1e3896d9e20110c0ae6a" -> "sha256:e26f57d26941101eb12a2f130da94d50454d0d813f28ae627ad50d72ef76dc47" [label=""];
  "sha256:e26f57d26941101eb12a2f130da94d50454d0d813f28ae627ad50d72ef76dc47" -> "sha256:de122b6dceb095e94059f746e2ea99f3638db60c8d60507055597b2e853414bf" [label=""];
}

