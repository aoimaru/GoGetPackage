[app/sources/345359890.Dockerfile]
digraph {
  "sha256:99a1ba7cdf3f5e6406c5a0db55e156a6eebb232a4adc1ce714c1db5ddecc3752" [label="docker-image://docker.io/balenalib/rpi-alpine:3.5-build" shape="ellipse"];
  "sha256:36c4f0660de99dd7489d0b2296f066495aaf7ec5bba7609d6692cad4bab19e50" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c38014f7c932f95d337341b1a4fa833523a8ed35b12cc7f7d23793929f1dd008" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" \t&& echo \"83fde5f5ba7100bf3bb127e3a1f08c239e747af3be040f0ae4adc55fcbe6bf72  go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv6hf.tar.gz" shape="box"];
  "sha256:340627e9133f613ba81a54a316dc38ec0d0c3581bc7a0acd9a1abb1f79269b41" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:31cab273a033a3badf73470669b2b04c77af0352ae6bbcc4c48a5b37bf359ef3" [label="mkdir{path=/go}" shape="note"];
  "sha256:6710c7437f687f2c22ca9afbb298d7ac71dc6cd1db682674aea80cfd3237349a" [label="sha256:6710c7437f687f2c22ca9afbb298d7ac71dc6cd1db682674aea80cfd3237349a" shape="plaintext"];
  "sha256:99a1ba7cdf3f5e6406c5a0db55e156a6eebb232a4adc1ce714c1db5ddecc3752" -> "sha256:36c4f0660de99dd7489d0b2296f066495aaf7ec5bba7609d6692cad4bab19e50" [label=""];
  "sha256:36c4f0660de99dd7489d0b2296f066495aaf7ec5bba7609d6692cad4bab19e50" -> "sha256:c38014f7c932f95d337341b1a4fa833523a8ed35b12cc7f7d23793929f1dd008" [label=""];
  "sha256:c38014f7c932f95d337341b1a4fa833523a8ed35b12cc7f7d23793929f1dd008" -> "sha256:340627e9133f613ba81a54a316dc38ec0d0c3581bc7a0acd9a1abb1f79269b41" [label=""];
  "sha256:340627e9133f613ba81a54a316dc38ec0d0c3581bc7a0acd9a1abb1f79269b41" -> "sha256:31cab273a033a3badf73470669b2b04c77af0352ae6bbcc4c48a5b37bf359ef3" [label=""];
  "sha256:31cab273a033a3badf73470669b2b04c77af0352ae6bbcc4c48a5b37bf359ef3" -> "sha256:6710c7437f687f2c22ca9afbb298d7ac71dc6cd1db682674aea80cfd3237349a" [label=""];
}

