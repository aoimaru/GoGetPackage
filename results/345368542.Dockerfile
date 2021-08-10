[app/sources/345368542.Dockerfile]
digraph {
  "sha256:d5701edd53c023eeba2618f492953f8053a1148ce044d2b8fe2e30e46850309b" [label="docker-image://docker.io/balenalib/beagleboard-xm-alpine:3.7-build" shape="ellipse"];
  "sha256:6bf1e9ba3c54077ad90ad147a5072628a3b38ad0bb0af7ce43345dffff2b36cb" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4d9011b238383bb13eed2dda5c322d622c825d2b050475fa6d1856c050585636" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:fe21c684dd88f0fc97c31477b00a65cafb2168ff12365e490da354d010076e1b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:eb3451c15deaa1cf17bfe56ef51ec45821a58b90e8265131899babade7088f20" [label="mkdir{path=/go}" shape="note"];
  "sha256:34310c268db69bee7ae140e587d02afda5cdd31e90014b76a4ae72a5c33155e9" [label="sha256:34310c268db69bee7ae140e587d02afda5cdd31e90014b76a4ae72a5c33155e9" shape="plaintext"];
  "sha256:d5701edd53c023eeba2618f492953f8053a1148ce044d2b8fe2e30e46850309b" -> "sha256:6bf1e9ba3c54077ad90ad147a5072628a3b38ad0bb0af7ce43345dffff2b36cb" [label=""];
  "sha256:6bf1e9ba3c54077ad90ad147a5072628a3b38ad0bb0af7ce43345dffff2b36cb" -> "sha256:4d9011b238383bb13eed2dda5c322d622c825d2b050475fa6d1856c050585636" [label=""];
  "sha256:4d9011b238383bb13eed2dda5c322d622c825d2b050475fa6d1856c050585636" -> "sha256:fe21c684dd88f0fc97c31477b00a65cafb2168ff12365e490da354d010076e1b" [label=""];
  "sha256:fe21c684dd88f0fc97c31477b00a65cafb2168ff12365e490da354d010076e1b" -> "sha256:eb3451c15deaa1cf17bfe56ef51ec45821a58b90e8265131899babade7088f20" [label=""];
  "sha256:eb3451c15deaa1cf17bfe56ef51ec45821a58b90e8265131899babade7088f20" -> "sha256:34310c268db69bee7ae140e587d02afda5cdd31e90014b76a4ae72a5c33155e9" [label=""];
}

