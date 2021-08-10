[app/sources/345375485.Dockerfile]
digraph {
  "sha256:e0a78fe8f04c4fdc0dbf2ae989601f61ff58420b4542d0a5629b13490e017f0f" [label="docker-image://docker.io/balenalib/odroid-xu4-debian:stretch-build" shape="ellipse"];
  "sha256:d54288b775f48e05cb73b868691ce53be66454f2e6cfb92dc619d3d481d9f486" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:e0e2dc173f92f48e13339eb307a8c3d82dfc5e026dd0b464ee4c3ebca2cdf72e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:77e5b3fb25e12c5879d3f823d20079c22d54ad7498847ce8d1afe6f4bdeb7ff0" [label="mkdir{path=/go}" shape="note"];
  "sha256:18a7845977f6203d827c6a52dcf04bf0768524e48a351bc5bcf53a385b6f807e" [label="sha256:18a7845977f6203d827c6a52dcf04bf0768524e48a351bc5bcf53a385b6f807e" shape="plaintext"];
  "sha256:e0a78fe8f04c4fdc0dbf2ae989601f61ff58420b4542d0a5629b13490e017f0f" -> "sha256:d54288b775f48e05cb73b868691ce53be66454f2e6cfb92dc619d3d481d9f486" [label=""];
  "sha256:d54288b775f48e05cb73b868691ce53be66454f2e6cfb92dc619d3d481d9f486" -> "sha256:e0e2dc173f92f48e13339eb307a8c3d82dfc5e026dd0b464ee4c3ebca2cdf72e" [label=""];
  "sha256:e0e2dc173f92f48e13339eb307a8c3d82dfc5e026dd0b464ee4c3ebca2cdf72e" -> "sha256:77e5b3fb25e12c5879d3f823d20079c22d54ad7498847ce8d1afe6f4bdeb7ff0" [label=""];
  "sha256:77e5b3fb25e12c5879d3f823d20079c22d54ad7498847ce8d1afe6f4bdeb7ff0" -> "sha256:18a7845977f6203d827c6a52dcf04bf0768524e48a351bc5bcf53a385b6f807e" [label=""];
}

