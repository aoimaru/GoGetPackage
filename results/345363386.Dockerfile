[app/sources/345363386.Dockerfile]
digraph {
  "sha256:41e6902cfd45b551991b85afe8e7b7456f7a52feebd8a00200ab50aefa6d5606" [label="docker-image://docker.io/balenalib/amd64-fedora:30-build" shape="ellipse"];
  "sha256:9d748252331c2b0cc1b7c0d280be411aa8098d95818b55f428b4f8626bcee05b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:1f0a81744065a6d308204c028d2db82b346f7a44df48fe5c0c2957ba06539d78" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:69c0538d9fbacba347ec54cd6c3f69b5a529181b112c81b105f057ac49d47f3f" [label="mkdir{path=/go}" shape="note"];
  "sha256:2125c73a6ecdc8354a84e9813cbdb2c7a772101a4a61f8e4592c53f43565d8d0" [label="sha256:2125c73a6ecdc8354a84e9813cbdb2c7a772101a4a61f8e4592c53f43565d8d0" shape="plaintext"];
  "sha256:41e6902cfd45b551991b85afe8e7b7456f7a52feebd8a00200ab50aefa6d5606" -> "sha256:9d748252331c2b0cc1b7c0d280be411aa8098d95818b55f428b4f8626bcee05b" [label=""];
  "sha256:9d748252331c2b0cc1b7c0d280be411aa8098d95818b55f428b4f8626bcee05b" -> "sha256:1f0a81744065a6d308204c028d2db82b346f7a44df48fe5c0c2957ba06539d78" [label=""];
  "sha256:1f0a81744065a6d308204c028d2db82b346f7a44df48fe5c0c2957ba06539d78" -> "sha256:69c0538d9fbacba347ec54cd6c3f69b5a529181b112c81b105f057ac49d47f3f" [label=""];
  "sha256:69c0538d9fbacba347ec54cd6c3f69b5a529181b112c81b105f057ac49d47f3f" -> "sha256:2125c73a6ecdc8354a84e9813cbdb2c7a772101a4a61f8e4592c53f43565d8d0" [label=""];
}

