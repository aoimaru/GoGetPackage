[app/sources/345372987.Dockerfile]
digraph {
  "sha256:af9b8283cbe26e88d2a057e2ccc38a95a35e495eb33b0b8f8708dc5523f7016a" [label="docker-image://docker.io/balenalib/intel-nuc-debian:stretch-build" shape="ellipse"];
  "sha256:506a888353dae9c7af2e98e253f52b06b589cd08fb85f4c9efcb273086612bf8" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:48f9aaed25708f0ba317e4eea650f174154d735060eafd0be47cb256513359fb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e69bea69199d9a993959f0bdaf03ce46987122fd32236277a7c7c6b257484cd0" [label="mkdir{path=/go}" shape="note"];
  "sha256:c6d1d97d777def4412779059f1367a7d9adaa2ea9cd1391fbd67a1c3e7b38187" [label="sha256:c6d1d97d777def4412779059f1367a7d9adaa2ea9cd1391fbd67a1c3e7b38187" shape="plaintext"];
  "sha256:af9b8283cbe26e88d2a057e2ccc38a95a35e495eb33b0b8f8708dc5523f7016a" -> "sha256:506a888353dae9c7af2e98e253f52b06b589cd08fb85f4c9efcb273086612bf8" [label=""];
  "sha256:506a888353dae9c7af2e98e253f52b06b589cd08fb85f4c9efcb273086612bf8" -> "sha256:48f9aaed25708f0ba317e4eea650f174154d735060eafd0be47cb256513359fb" [label=""];
  "sha256:48f9aaed25708f0ba317e4eea650f174154d735060eafd0be47cb256513359fb" -> "sha256:e69bea69199d9a993959f0bdaf03ce46987122fd32236277a7c7c6b257484cd0" [label=""];
  "sha256:e69bea69199d9a993959f0bdaf03ce46987122fd32236277a7c7c6b257484cd0" -> "sha256:c6d1d97d777def4412779059f1367a7d9adaa2ea9cd1391fbd67a1c3e7b38187" [label=""];
}

