[app/sources/345363546.Dockerfile]
digraph {
  "sha256:3a563a754a28dad8962beb556977c8e38d165d0b7a2eaf53cccc5e799da5c7a3" [label="docker-image://docker.io/balenalib/armv5e-debian:stretch-build" shape="ellipse"];
  "sha256:c867bf87d6c0cbe146dc29fd04acf4a6f756bc140f0c10e07d4005851ae6157f" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armel.tar.gz\" \t&& echo \"9521520574fec79bdfa00458280685bf925294c5839b2f79e200c42d4d2fb93f  go$GO_VERSION.linux-armel.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armel.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armel.tar.gz" shape="box"];
  "sha256:e9fc7d6c24375cd748075d1465508703da84d0893b66cee6ccabe984864f3e04" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9a7f3ca6a2c6606a2962c5005fc7e67e4954ffb4a577113cdb510834cc568d6f" [label="mkdir{path=/go}" shape="note"];
  "sha256:43aa9f287eb0f8d95a3e92d47bde867e3e179d41f5848e63a49d1f5de43edf2f" [label="sha256:43aa9f287eb0f8d95a3e92d47bde867e3e179d41f5848e63a49d1f5de43edf2f" shape="plaintext"];
  "sha256:3a563a754a28dad8962beb556977c8e38d165d0b7a2eaf53cccc5e799da5c7a3" -> "sha256:c867bf87d6c0cbe146dc29fd04acf4a6f756bc140f0c10e07d4005851ae6157f" [label=""];
  "sha256:c867bf87d6c0cbe146dc29fd04acf4a6f756bc140f0c10e07d4005851ae6157f" -> "sha256:e9fc7d6c24375cd748075d1465508703da84d0893b66cee6ccabe984864f3e04" [label=""];
  "sha256:e9fc7d6c24375cd748075d1465508703da84d0893b66cee6ccabe984864f3e04" -> "sha256:9a7f3ca6a2c6606a2962c5005fc7e67e4954ffb4a577113cdb510834cc568d6f" [label=""];
  "sha256:9a7f3ca6a2c6606a2962c5005fc7e67e4954ffb4a577113cdb510834cc568d6f" -> "sha256:43aa9f287eb0f8d95a3e92d47bde867e3e179d41f5848e63a49d1f5de43edf2f" [label=""];
}

