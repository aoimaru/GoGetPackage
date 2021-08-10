[app/sources/345366572.Dockerfile]
digraph {
  "sha256:b33ecc3c6b5fa7729ea3289a387492f8b9a033a39d83cc0d6c51257016c1fca1" [label="docker-image://docker.io/balenalib/imx7-var-som-ubuntu:trusty-build" shape="ellipse"];
  "sha256:8334afc570b359c977126b461867fd11e8228321222a2a9857c360c358a355f5" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:3b19bc4753baa8aaddc364a748bac997e5e72343e2ffee625f64f5a5830aacb3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3e45ecb7bbd4b2b2c5df5315775964f4cd269f2b88d6bf0e9d29b5cf37527254" [label="mkdir{path=/go}" shape="note"];
  "sha256:05ff5a2239e4f1cdba9af396e495988dde47088baec9dec0697b9e4f539cacb8" [label="sha256:05ff5a2239e4f1cdba9af396e495988dde47088baec9dec0697b9e4f539cacb8" shape="plaintext"];
  "sha256:b33ecc3c6b5fa7729ea3289a387492f8b9a033a39d83cc0d6c51257016c1fca1" -> "sha256:8334afc570b359c977126b461867fd11e8228321222a2a9857c360c358a355f5" [label=""];
  "sha256:8334afc570b359c977126b461867fd11e8228321222a2a9857c360c358a355f5" -> "sha256:3b19bc4753baa8aaddc364a748bac997e5e72343e2ffee625f64f5a5830aacb3" [label=""];
  "sha256:3b19bc4753baa8aaddc364a748bac997e5e72343e2ffee625f64f5a5830aacb3" -> "sha256:3e45ecb7bbd4b2b2c5df5315775964f4cd269f2b88d6bf0e9d29b5cf37527254" [label=""];
  "sha256:3e45ecb7bbd4b2b2c5df5315775964f4cd269f2b88d6bf0e9d29b5cf37527254" -> "sha256:05ff5a2239e4f1cdba9af396e495988dde47088baec9dec0697b9e4f539cacb8" [label=""];
}

