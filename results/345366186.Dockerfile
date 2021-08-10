[app/sources/345366186.Dockerfile]
digraph {
  "sha256:8d71ded777a6db1f65f969f306cac3734c17e93e21381b0f796baaf5916909fa" [label="docker-image://docker.io/balenalib/hummingboard-fedora:29-build" shape="ellipse"];
  "sha256:d019e07805b65230e28e255cdf7df490607f13ea34f5128088f79db129acd0bf" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:aff063595c3c1556f96d8e2e8181d40a963bb36809e30fd1c7e54b45a418fe88" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b29e913f666f840a59f3c5233a09dc42b104625be6e4394c78f92f7d251a64cd" [label="mkdir{path=/go}" shape="note"];
  "sha256:23659f477a78c5e7e669636c54a806e9c53ee2243099b8f94f100b8962eb8c13" [label="sha256:23659f477a78c5e7e669636c54a806e9c53ee2243099b8f94f100b8962eb8c13" shape="plaintext"];
  "sha256:8d71ded777a6db1f65f969f306cac3734c17e93e21381b0f796baaf5916909fa" -> "sha256:d019e07805b65230e28e255cdf7df490607f13ea34f5128088f79db129acd0bf" [label=""];
  "sha256:d019e07805b65230e28e255cdf7df490607f13ea34f5128088f79db129acd0bf" -> "sha256:aff063595c3c1556f96d8e2e8181d40a963bb36809e30fd1c7e54b45a418fe88" [label=""];
  "sha256:aff063595c3c1556f96d8e2e8181d40a963bb36809e30fd1c7e54b45a418fe88" -> "sha256:b29e913f666f840a59f3c5233a09dc42b104625be6e4394c78f92f7d251a64cd" [label=""];
  "sha256:b29e913f666f840a59f3c5233a09dc42b104625be6e4394c78f92f7d251a64cd" -> "sha256:23659f477a78c5e7e669636c54a806e9c53ee2243099b8f94f100b8962eb8c13" [label=""];
}

