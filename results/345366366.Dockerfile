[app/sources/345366366.Dockerfile]
digraph {
  "sha256:d9bc76cb8d951d68847226b4fda2270f1ad35c7d751ff2886bd8b089077c6f04" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-alpine:3.5-build" shape="ellipse"];
  "sha256:efc1c42fa98213740b5febaab3d065a725e87681b0fc95a4feb99b8629f7e68d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:e9423111f4c7893a17e1cc26b54e0a031cc04f21f249312eb6833649c0e7196d" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:745c54047c256f42d8110ee90966df7c0b85e4b0c68e594faef13c53f0f96109" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c8f3761bbe4d166873daaf8ba22127a7db995ac8bb6d05de2eeb7cc63929e6b1" [label="mkdir{path=/go}" shape="note"];
  "sha256:d0cd6805b43254988b04935210839a75e1887a7ba7fc6957fbc734bbedb828d0" [label="sha256:d0cd6805b43254988b04935210839a75e1887a7ba7fc6957fbc734bbedb828d0" shape="plaintext"];
  "sha256:d9bc76cb8d951d68847226b4fda2270f1ad35c7d751ff2886bd8b089077c6f04" -> "sha256:efc1c42fa98213740b5febaab3d065a725e87681b0fc95a4feb99b8629f7e68d" [label=""];
  "sha256:efc1c42fa98213740b5febaab3d065a725e87681b0fc95a4feb99b8629f7e68d" -> "sha256:e9423111f4c7893a17e1cc26b54e0a031cc04f21f249312eb6833649c0e7196d" [label=""];
  "sha256:e9423111f4c7893a17e1cc26b54e0a031cc04f21f249312eb6833649c0e7196d" -> "sha256:745c54047c256f42d8110ee90966df7c0b85e4b0c68e594faef13c53f0f96109" [label=""];
  "sha256:745c54047c256f42d8110ee90966df7c0b85e4b0c68e594faef13c53f0f96109" -> "sha256:c8f3761bbe4d166873daaf8ba22127a7db995ac8bb6d05de2eeb7cc63929e6b1" [label=""];
  "sha256:c8f3761bbe4d166873daaf8ba22127a7db995ac8bb6d05de2eeb7cc63929e6b1" -> "sha256:d0cd6805b43254988b04935210839a75e1887a7ba7fc6957fbc734bbedb828d0" [label=""];
}

