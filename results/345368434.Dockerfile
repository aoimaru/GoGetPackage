[app/sources/345368434.Dockerfile]
digraph {
  "sha256:54f4ee4e99693430f4586b4dd45ce7925b6ab6fb43a473e6e262bb88cb50de16" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-alpine:3.7-build" shape="ellipse"];
  "sha256:01fc24d434414f6f49463f8048e1af2caacb710ae9185e89787db30bcc75203f" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c1e2a60737b25698406464d45d05459861b48a30a6f40c74701dcbffbfad44f3" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:cea0640ac53a16ac253b9ca09dd0b9b6451b745dc396c7e651d76b76e4056368" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c6a42a334d5bf6410177aeecc02dc23baf4aeb3fef45027b11a4ef53b6a6a25f" [label="mkdir{path=/go}" shape="note"];
  "sha256:5896895f7d752a9f45edd0297a356e05766b244cfbcf4b5484ee1b20b1968beb" [label="sha256:5896895f7d752a9f45edd0297a356e05766b244cfbcf4b5484ee1b20b1968beb" shape="plaintext"];
  "sha256:54f4ee4e99693430f4586b4dd45ce7925b6ab6fb43a473e6e262bb88cb50de16" -> "sha256:01fc24d434414f6f49463f8048e1af2caacb710ae9185e89787db30bcc75203f" [label=""];
  "sha256:01fc24d434414f6f49463f8048e1af2caacb710ae9185e89787db30bcc75203f" -> "sha256:c1e2a60737b25698406464d45d05459861b48a30a6f40c74701dcbffbfad44f3" [label=""];
  "sha256:c1e2a60737b25698406464d45d05459861b48a30a6f40c74701dcbffbfad44f3" -> "sha256:cea0640ac53a16ac253b9ca09dd0b9b6451b745dc396c7e651d76b76e4056368" [label=""];
  "sha256:cea0640ac53a16ac253b9ca09dd0b9b6451b745dc396c7e651d76b76e4056368" -> "sha256:c6a42a334d5bf6410177aeecc02dc23baf4aeb3fef45027b11a4ef53b6a6a25f" [label=""];
  "sha256:c6a42a334d5bf6410177aeecc02dc23baf4aeb3fef45027b11a4ef53b6a6a25f" -> "sha256:5896895f7d752a9f45edd0297a356e05766b244cfbcf4b5484ee1b20b1968beb" [label=""];
}

