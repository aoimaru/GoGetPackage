[app/sources/345357131.Dockerfile]
digraph {
  "sha256:0d445b86287eceff1e927cca996519b2ef058990087eb591a881dfb72c1c5375" [label="docker-image://docker.io/balenalib/orangepi-plus2-alpine:3.8-run" shape="ellipse"];
  "sha256:c6769b9e84ab9904e43eda37b91775bc0bb62d5de4b99e51ffa8ae7f886d0ff5" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:5e9213167bf9c1c436495b9825aa4fc04be25b5861f862f791e7c411884c669e" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:c3ef974b11c69d7c4746c16e8990c923e079f26879e1579dda216198df3fc4a6" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:9d66694188569d8011c9cf5e5672e9975bb03ea001334322395375af05b1e32e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8d8cb9696c1e8377ff2ffb4fb81cc3905a26a49a1d79580f9adcefb83ec58638" [label="mkdir{path=/go}" shape="note"];
  "sha256:c9f67bd32c57c02bb6ef360ce5881b8ffa1c87edda47ade42157ff1eb35ab968" [label="sha256:c9f67bd32c57c02bb6ef360ce5881b8ffa1c87edda47ade42157ff1eb35ab968" shape="plaintext"];
  "sha256:0d445b86287eceff1e927cca996519b2ef058990087eb591a881dfb72c1c5375" -> "sha256:c6769b9e84ab9904e43eda37b91775bc0bb62d5de4b99e51ffa8ae7f886d0ff5" [label=""];
  "sha256:c6769b9e84ab9904e43eda37b91775bc0bb62d5de4b99e51ffa8ae7f886d0ff5" -> "sha256:5e9213167bf9c1c436495b9825aa4fc04be25b5861f862f791e7c411884c669e" [label=""];
  "sha256:5e9213167bf9c1c436495b9825aa4fc04be25b5861f862f791e7c411884c669e" -> "sha256:c3ef974b11c69d7c4746c16e8990c923e079f26879e1579dda216198df3fc4a6" [label=""];
  "sha256:c3ef974b11c69d7c4746c16e8990c923e079f26879e1579dda216198df3fc4a6" -> "sha256:9d66694188569d8011c9cf5e5672e9975bb03ea001334322395375af05b1e32e" [label=""];
  "sha256:9d66694188569d8011c9cf5e5672e9975bb03ea001334322395375af05b1e32e" -> "sha256:8d8cb9696c1e8377ff2ffb4fb81cc3905a26a49a1d79580f9adcefb83ec58638" [label=""];
  "sha256:8d8cb9696c1e8377ff2ffb4fb81cc3905a26a49a1d79580f9adcefb83ec58638" -> "sha256:c9f67bd32c57c02bb6ef360ce5881b8ffa1c87edda47ade42157ff1eb35ab968" [label=""];
}

