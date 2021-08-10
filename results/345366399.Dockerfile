[app/sources/345366399.Dockerfile]
digraph {
  "sha256:5743ce2d00ee2330bc3ce0036b0fed21b6c320b97f3b0d2ff50617ca0a5f5657" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-alpine:edge-run" shape="ellipse"];
  "sha256:dc685dcf93483e20f37dde5b29ff12b9e86fe19a1db085786aa34763b8a034cd" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:59e1d9645da01abd55ab2fa93d4b9216a757d9da4868d41934f326c05f91636e" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:c172ac81345f43b5c792f4e5bdfcefb49ce6d45007e684cf3ead8e36d6a3ecc3" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:2efd1ac0a380ea85930ccbb93ba240448e05deb12e15b8bcf52b8e4b19e5c19e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:37b17e503f4821c02b1813190829506191361c60e816d540ad803eba270c0ad1" [label="mkdir{path=/go}" shape="note"];
  "sha256:de6419efea946db0cf8b8d9c47212627751bef827da5b72e7e2ffdf29ebabffd" [label="sha256:de6419efea946db0cf8b8d9c47212627751bef827da5b72e7e2ffdf29ebabffd" shape="plaintext"];
  "sha256:5743ce2d00ee2330bc3ce0036b0fed21b6c320b97f3b0d2ff50617ca0a5f5657" -> "sha256:dc685dcf93483e20f37dde5b29ff12b9e86fe19a1db085786aa34763b8a034cd" [label=""];
  "sha256:dc685dcf93483e20f37dde5b29ff12b9e86fe19a1db085786aa34763b8a034cd" -> "sha256:59e1d9645da01abd55ab2fa93d4b9216a757d9da4868d41934f326c05f91636e" [label=""];
  "sha256:59e1d9645da01abd55ab2fa93d4b9216a757d9da4868d41934f326c05f91636e" -> "sha256:c172ac81345f43b5c792f4e5bdfcefb49ce6d45007e684cf3ead8e36d6a3ecc3" [label=""];
  "sha256:c172ac81345f43b5c792f4e5bdfcefb49ce6d45007e684cf3ead8e36d6a3ecc3" -> "sha256:2efd1ac0a380ea85930ccbb93ba240448e05deb12e15b8bcf52b8e4b19e5c19e" [label=""];
  "sha256:2efd1ac0a380ea85930ccbb93ba240448e05deb12e15b8bcf52b8e4b19e5c19e" -> "sha256:37b17e503f4821c02b1813190829506191361c60e816d540ad803eba270c0ad1" [label=""];
  "sha256:37b17e503f4821c02b1813190829506191361c60e816d540ad803eba270c0ad1" -> "sha256:de6419efea946db0cf8b8d9c47212627751bef827da5b72e7e2ffdf29ebabffd" [label=""];
}

