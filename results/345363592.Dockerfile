[app/sources/345363592.Dockerfile]
digraph {
  "sha256:4b260d25a5da33874eae0eecb2377cb92a90095151e6b76ea816e9d8353ce5d4" [label="docker-image://docker.io/balenalib/armv7hf-debian:jessie-build" shape="ellipse"];
  "sha256:f8311e735a88105d2bc4b1c37da24757ccc0dc481f452626237e5b91c2de976a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:9f8b8938634f5d7e64a5b5add66ba26f0878e4387026b2e3a21d03daf5363599" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5bbcad1084145abaaf6ebcbf92d5643e2a05536a8edb8b615624a264b48bad27" [label="mkdir{path=/go}" shape="note"];
  "sha256:89dcf5d71ed50fdacbdff9adc01cfb8f66487dac37a110095a1e1c0c61e94c39" [label="sha256:89dcf5d71ed50fdacbdff9adc01cfb8f66487dac37a110095a1e1c0c61e94c39" shape="plaintext"];
  "sha256:4b260d25a5da33874eae0eecb2377cb92a90095151e6b76ea816e9d8353ce5d4" -> "sha256:f8311e735a88105d2bc4b1c37da24757ccc0dc481f452626237e5b91c2de976a" [label=""];
  "sha256:f8311e735a88105d2bc4b1c37da24757ccc0dc481f452626237e5b91c2de976a" -> "sha256:9f8b8938634f5d7e64a5b5add66ba26f0878e4387026b2e3a21d03daf5363599" [label=""];
  "sha256:9f8b8938634f5d7e64a5b5add66ba26f0878e4387026b2e3a21d03daf5363599" -> "sha256:5bbcad1084145abaaf6ebcbf92d5643e2a05536a8edb8b615624a264b48bad27" [label=""];
  "sha256:5bbcad1084145abaaf6ebcbf92d5643e2a05536a8edb8b615624a264b48bad27" -> "sha256:89dcf5d71ed50fdacbdff9adc01cfb8f66487dac37a110095a1e1c0c61e94c39" [label=""];
}

