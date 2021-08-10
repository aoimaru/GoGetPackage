[app/sources/345365812.Dockerfile]
digraph {
  "sha256:6eb417e2e9eaa539c3719381f7c1b376b82d06d3c74a8c025798569257233bdc" [label="docker-image://docker.io/balenalib/fincm3-alpine:edge-build" shape="ellipse"];
  "sha256:6fba7cdb15518def1afb1bfe72ba81bcdc1d9de87e2860f950bd2863c953dfb4" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:7a4c4d478e9ba24a29b25814e6d2895f92cae2777a365924d88af38931f7cf41" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:9496d7ea1b099112e5a5aef1a3f629538c2ddfba920f620c8106e8182ffacb23" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4d354bc99dceb73a652de4fc5504100f9c367da3720150c1aaec8cb176aac235" [label="mkdir{path=/go}" shape="note"];
  "sha256:2bbbc4b6e366b58e9a95d2bf60177b1ecd884a49b0ee5d5f27a3826e4dded319" [label="sha256:2bbbc4b6e366b58e9a95d2bf60177b1ecd884a49b0ee5d5f27a3826e4dded319" shape="plaintext"];
  "sha256:6eb417e2e9eaa539c3719381f7c1b376b82d06d3c74a8c025798569257233bdc" -> "sha256:6fba7cdb15518def1afb1bfe72ba81bcdc1d9de87e2860f950bd2863c953dfb4" [label=""];
  "sha256:6fba7cdb15518def1afb1bfe72ba81bcdc1d9de87e2860f950bd2863c953dfb4" -> "sha256:7a4c4d478e9ba24a29b25814e6d2895f92cae2777a365924d88af38931f7cf41" [label=""];
  "sha256:7a4c4d478e9ba24a29b25814e6d2895f92cae2777a365924d88af38931f7cf41" -> "sha256:9496d7ea1b099112e5a5aef1a3f629538c2ddfba920f620c8106e8182ffacb23" [label=""];
  "sha256:9496d7ea1b099112e5a5aef1a3f629538c2ddfba920f620c8106e8182ffacb23" -> "sha256:4d354bc99dceb73a652de4fc5504100f9c367da3720150c1aaec8cb176aac235" [label=""];
  "sha256:4d354bc99dceb73a652de4fc5504100f9c367da3720150c1aaec8cb176aac235" -> "sha256:2bbbc4b6e366b58e9a95d2bf60177b1ecd884a49b0ee5d5f27a3826e4dded319" [label=""];
}

