[app/sources/345375545.Dockerfile]
digraph {
  "sha256:c98769b2436a4d33a06ae72c666ed39670d03ab4aeb2d9aea4d5b19bd3321ae7" [label="docker-image://docker.io/balenalib/orange-pi-lite-alpine:3.6-build" shape="ellipse"];
  "sha256:d5147e86c6daff6bc6038134baf3a66916367a591326d77cee25ed1743e0a052" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:98b9075aab14fc3cbf773dc61d1d62fbcea587568d51930bff85ec0e982ba922" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:b5cf3c885a490fb0b5835210f374226fcdb34c4fbf8285c677a6e3bf3912016b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2ccd02ec85dd80e9bdd1aba6e01da23a750a5f162f5e4a54c787f7d2db7f6b7a" [label="mkdir{path=/go}" shape="note"];
  "sha256:24f7675d1de215ab3bbff07409c48abb81a634679ad60071bee47d718b84a2ee" [label="sha256:24f7675d1de215ab3bbff07409c48abb81a634679ad60071bee47d718b84a2ee" shape="plaintext"];
  "sha256:c98769b2436a4d33a06ae72c666ed39670d03ab4aeb2d9aea4d5b19bd3321ae7" -> "sha256:d5147e86c6daff6bc6038134baf3a66916367a591326d77cee25ed1743e0a052" [label=""];
  "sha256:d5147e86c6daff6bc6038134baf3a66916367a591326d77cee25ed1743e0a052" -> "sha256:98b9075aab14fc3cbf773dc61d1d62fbcea587568d51930bff85ec0e982ba922" [label=""];
  "sha256:98b9075aab14fc3cbf773dc61d1d62fbcea587568d51930bff85ec0e982ba922" -> "sha256:b5cf3c885a490fb0b5835210f374226fcdb34c4fbf8285c677a6e3bf3912016b" [label=""];
  "sha256:b5cf3c885a490fb0b5835210f374226fcdb34c4fbf8285c677a6e3bf3912016b" -> "sha256:2ccd02ec85dd80e9bdd1aba6e01da23a750a5f162f5e4a54c787f7d2db7f6b7a" [label=""];
  "sha256:2ccd02ec85dd80e9bdd1aba6e01da23a750a5f162f5e4a54c787f7d2db7f6b7a" -> "sha256:24f7675d1de215ab3bbff07409c48abb81a634679ad60071bee47d718b84a2ee" [label=""];
}

