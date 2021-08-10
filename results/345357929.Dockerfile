[app/sources/345357929.Dockerfile]
digraph {
  "sha256:0ecfed3d6c54e01ff44303073aafb3b9a4a186fe7c3f6365afe4b163a4549044" [label="docker-image://docker.io/balenalib/raspberry-pi-alpine:3.7-build" shape="ellipse"];
  "sha256:a51c3c7906686ae5378e41293896a9da24a97712efd137f19087276d864c96ea" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1eea6b690befb337d9545ff2d80585fc2a7005af48718bfa49f0421666c46c06" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armhf.tar.gz\" \t&& echo \"c79fb21d7976753df9d59a055309db46558f7fe99a164ea7f1e87af577633da1  go$GO_VERSION.linux-alpine-armhf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armhf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armhf.tar.gz" shape="box"];
  "sha256:bb3fbbc5ff16193dc714f46a48817b7278893b08681b12f8451f978609867512" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e690d1d70cc27d3c2d95fe9263eb8ada08e2c8ba75c553be414e6b4c1eab7e66" [label="mkdir{path=/go}" shape="note"];
  "sha256:cb0cf991278b5a6c4f455e5ced10bfb33f5fd413e051cb13717f35bce2130e9f" [label="sha256:cb0cf991278b5a6c4f455e5ced10bfb33f5fd413e051cb13717f35bce2130e9f" shape="plaintext"];
  "sha256:0ecfed3d6c54e01ff44303073aafb3b9a4a186fe7c3f6365afe4b163a4549044" -> "sha256:a51c3c7906686ae5378e41293896a9da24a97712efd137f19087276d864c96ea" [label=""];
  "sha256:a51c3c7906686ae5378e41293896a9da24a97712efd137f19087276d864c96ea" -> "sha256:1eea6b690befb337d9545ff2d80585fc2a7005af48718bfa49f0421666c46c06" [label=""];
  "sha256:1eea6b690befb337d9545ff2d80585fc2a7005af48718bfa49f0421666c46c06" -> "sha256:bb3fbbc5ff16193dc714f46a48817b7278893b08681b12f8451f978609867512" [label=""];
  "sha256:bb3fbbc5ff16193dc714f46a48817b7278893b08681b12f8451f978609867512" -> "sha256:e690d1d70cc27d3c2d95fe9263eb8ada08e2c8ba75c553be414e6b4c1eab7e66" [label=""];
  "sha256:e690d1d70cc27d3c2d95fe9263eb8ada08e2c8ba75c553be414e6b4c1eab7e66" -> "sha256:cb0cf991278b5a6c4f455e5ced10bfb33f5fd413e051cb13717f35bce2130e9f" [label=""];
}

