[app/sources/345375451.Dockerfile]
digraph {
  "sha256:0e7ee74076aad42dff0e40c09c0fe96d9e8cbe26514878472a68f478b198e223" [label="docker-image://docker.io/balenalib/odroid-xu4-alpine:3.8-build@sha256:c5db3c0547d55f89982a1a62e890dd1a4347c0f19ad467ca9404f56570cb2153" shape="ellipse"];
  "sha256:322d229cda7f8ba9b24e538fcff83fa2bdd41bd5aa59ffdc0cb1d5bb3fe35d0d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1783a2dcabbab52ac1f8042864973e9999711d7bc98c6719cccf358c761a4cdc" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:52b77e44b0dca347b38c23e30584ddd8dbb20ade959612479de974f14a52cb66" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2268d9726d5f81f233cbc09fa741db6b627e4b8ed93a635db542207a5fa92c8e" [label="mkdir{path=/go}" shape="note"];
  "sha256:e80c8c76d0be3430fe0c3dec2ab074e5ad50b4e1f7b2bdbbfa15d6880fbcde58" [label="sha256:e80c8c76d0be3430fe0c3dec2ab074e5ad50b4e1f7b2bdbbfa15d6880fbcde58" shape="plaintext"];
  "sha256:0e7ee74076aad42dff0e40c09c0fe96d9e8cbe26514878472a68f478b198e223" -> "sha256:322d229cda7f8ba9b24e538fcff83fa2bdd41bd5aa59ffdc0cb1d5bb3fe35d0d" [label=""];
  "sha256:322d229cda7f8ba9b24e538fcff83fa2bdd41bd5aa59ffdc0cb1d5bb3fe35d0d" -> "sha256:1783a2dcabbab52ac1f8042864973e9999711d7bc98c6719cccf358c761a4cdc" [label=""];
  "sha256:1783a2dcabbab52ac1f8042864973e9999711d7bc98c6719cccf358c761a4cdc" -> "sha256:52b77e44b0dca347b38c23e30584ddd8dbb20ade959612479de974f14a52cb66" [label=""];
  "sha256:52b77e44b0dca347b38c23e30584ddd8dbb20ade959612479de974f14a52cb66" -> "sha256:2268d9726d5f81f233cbc09fa741db6b627e4b8ed93a635db542207a5fa92c8e" [label=""];
  "sha256:2268d9726d5f81f233cbc09fa741db6b627e4b8ed93a635db542207a5fa92c8e" -> "sha256:e80c8c76d0be3430fe0c3dec2ab074e5ad50b4e1f7b2bdbbfa15d6880fbcde58" [label=""];
}

