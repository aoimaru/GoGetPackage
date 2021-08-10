[app/sources/345367876.Dockerfile]
digraph {
  "sha256:8b0556be375a7930a258f1032d42dcb33debcce4681f77eefdc5c14e7d0f5ef9" [label="docker-image://docker.io/balenalib/artik530-alpine:3.5-build" shape="ellipse"];
  "sha256:0e866d1757222f9835f11928a54d18d9204e4e40deee0accd489c5c8651b5816" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:df2f0685eac2957ec34176115f0127d7df74b84a0596eb69511a4c58d6b9e90e" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:54453ae89cdefc1bd645c9c54e58b9cb79dbe076b8eabb8e03032e0b9b9fa070" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:636c08e287afe6be742fcb5bbcb2924df3924899ba0af7e63701fdf6b0db424c" [label="mkdir{path=/go}" shape="note"];
  "sha256:1022a70b46137e6394576d2e964adca1485080f35b05c7dcee20f35a01fac6c0" [label="sha256:1022a70b46137e6394576d2e964adca1485080f35b05c7dcee20f35a01fac6c0" shape="plaintext"];
  "sha256:8b0556be375a7930a258f1032d42dcb33debcce4681f77eefdc5c14e7d0f5ef9" -> "sha256:0e866d1757222f9835f11928a54d18d9204e4e40deee0accd489c5c8651b5816" [label=""];
  "sha256:0e866d1757222f9835f11928a54d18d9204e4e40deee0accd489c5c8651b5816" -> "sha256:df2f0685eac2957ec34176115f0127d7df74b84a0596eb69511a4c58d6b9e90e" [label=""];
  "sha256:df2f0685eac2957ec34176115f0127d7df74b84a0596eb69511a4c58d6b9e90e" -> "sha256:54453ae89cdefc1bd645c9c54e58b9cb79dbe076b8eabb8e03032e0b9b9fa070" [label=""];
  "sha256:54453ae89cdefc1bd645c9c54e58b9cb79dbe076b8eabb8e03032e0b9b9fa070" -> "sha256:636c08e287afe6be742fcb5bbcb2924df3924899ba0af7e63701fdf6b0db424c" [label=""];
  "sha256:636c08e287afe6be742fcb5bbcb2924df3924899ba0af7e63701fdf6b0db424c" -> "sha256:1022a70b46137e6394576d2e964adca1485080f35b05c7dcee20f35a01fac6c0" [label=""];
}

