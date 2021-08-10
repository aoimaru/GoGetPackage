[app/sources/345375559.Dockerfile]
digraph {
  "sha256:7becb02656d33a5cebb9b1a6a4f4a80a6edff2d7540a4af3125b2a2dd6955dfa" [label="docker-image://docker.io/balenalib/orange-pi-lite-alpine:3.8-build" shape="ellipse"];
  "sha256:a1b4974c54bcd32d3f4193b1985db9938fb9082a0dc03dcee2077182bc1efb18" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:994f5a2c99dc4676a274c99494557816d53638fe9ca87c5c7ce0fb08bc209c62" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:1ab14c709a89c8ba902d5039522bfa2a85d62bf7bcf8b3f6117dcd28c7757b88" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:51f2ab69939d165b9cef50e51aaabd591a8d84066e1f014ab837488c2f915227" [label="mkdir{path=/go}" shape="note"];
  "sha256:d46443195a68fb89cbab497fb40ea3fba4cd46d6bec02ece78c1ec799865074e" [label="sha256:d46443195a68fb89cbab497fb40ea3fba4cd46d6bec02ece78c1ec799865074e" shape="plaintext"];
  "sha256:7becb02656d33a5cebb9b1a6a4f4a80a6edff2d7540a4af3125b2a2dd6955dfa" -> "sha256:a1b4974c54bcd32d3f4193b1985db9938fb9082a0dc03dcee2077182bc1efb18" [label=""];
  "sha256:a1b4974c54bcd32d3f4193b1985db9938fb9082a0dc03dcee2077182bc1efb18" -> "sha256:994f5a2c99dc4676a274c99494557816d53638fe9ca87c5c7ce0fb08bc209c62" [label=""];
  "sha256:994f5a2c99dc4676a274c99494557816d53638fe9ca87c5c7ce0fb08bc209c62" -> "sha256:1ab14c709a89c8ba902d5039522bfa2a85d62bf7bcf8b3f6117dcd28c7757b88" [label=""];
  "sha256:1ab14c709a89c8ba902d5039522bfa2a85d62bf7bcf8b3f6117dcd28c7757b88" -> "sha256:51f2ab69939d165b9cef50e51aaabd591a8d84066e1f014ab837488c2f915227" [label=""];
  "sha256:51f2ab69939d165b9cef50e51aaabd591a8d84066e1f014ab837488c2f915227" -> "sha256:d46443195a68fb89cbab497fb40ea3fba4cd46d6bec02ece78c1ec799865074e" [label=""];
}

