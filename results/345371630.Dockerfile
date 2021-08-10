[app/sources/345371630.Dockerfile]
digraph {
  "sha256:023f06e947495703d34d5511f4213d087edc81058cc8e037ee633e9977b0728c" [label="docker-image://docker.io/balenalib/cybertan-ze250-debian:jessie-build" shape="ellipse"];
  "sha256:9792b4f16e75ce681e401cbb0c399b8ab9f969ee90f4436ffbf722e0bee1d93e" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386-nlp.tar.gz\" \t&& echo \"4311bd415762c95664dfee41ddc1e2c19bd3ffa85e20fb5f90951a69e2c33f0d  go$GO_VERSION.linux-i386-nlp.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386-nlp.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386-nlp.tar.gz" shape="box"];
  "sha256:927014a1e1222db8617663588f6fb3e7db45b2ad924e3bcd6fa3b9d88425c9d9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0b74d488c54d7676197a10f681a27d461cba752b7f7917ad34d9f464ffb1e62d" [label="mkdir{path=/go}" shape="note"];
  "sha256:2f63060687876ad2ca146c811f176b42ba23e09b08996700990b7581541628e2" [label="sha256:2f63060687876ad2ca146c811f176b42ba23e09b08996700990b7581541628e2" shape="plaintext"];
  "sha256:023f06e947495703d34d5511f4213d087edc81058cc8e037ee633e9977b0728c" -> "sha256:9792b4f16e75ce681e401cbb0c399b8ab9f969ee90f4436ffbf722e0bee1d93e" [label=""];
  "sha256:9792b4f16e75ce681e401cbb0c399b8ab9f969ee90f4436ffbf722e0bee1d93e" -> "sha256:927014a1e1222db8617663588f6fb3e7db45b2ad924e3bcd6fa3b9d88425c9d9" [label=""];
  "sha256:927014a1e1222db8617663588f6fb3e7db45b2ad924e3bcd6fa3b9d88425c9d9" -> "sha256:0b74d488c54d7676197a10f681a27d461cba752b7f7917ad34d9f464ffb1e62d" [label=""];
  "sha256:0b74d488c54d7676197a10f681a27d461cba752b7f7917ad34d9f464ffb1e62d" -> "sha256:2f63060687876ad2ca146c811f176b42ba23e09b08996700990b7581541628e2" [label=""];
}

