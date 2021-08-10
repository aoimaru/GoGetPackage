[app/sources/345366038.Dockerfile]
digraph {
  "sha256:666f071d0f8604550349a96685a5197c0458c48bcc4550c21d7b3cbc4fe0b760" [label="docker-image://docker.io/balenalib/generic-armv7ahf-alpine:edge-build" shape="ellipse"];
  "sha256:93827faaca039f0c3c485cd7c8ed626a9443d2868b762954d5f5f2f40352490a" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:fe6b1d21dac287fea397b75fdc6b6d154beae8f40504cbf85951e20e6524d2a0" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:e0c3884e4f4fdeeafb0beb8d66d1b3d08bb34d04db445dfe6f06e41bc2a3d1b1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d9bff391ccfb5179711c2151e5b17d59b3518cdc7e5dbfefc0692be8d1c9f9ec" [label="mkdir{path=/go}" shape="note"];
  "sha256:45812807cb0ddc451f7b01541ac227e4f0a2a79a56b8176245609dbb392418a8" [label="sha256:45812807cb0ddc451f7b01541ac227e4f0a2a79a56b8176245609dbb392418a8" shape="plaintext"];
  "sha256:666f071d0f8604550349a96685a5197c0458c48bcc4550c21d7b3cbc4fe0b760" -> "sha256:93827faaca039f0c3c485cd7c8ed626a9443d2868b762954d5f5f2f40352490a" [label=""];
  "sha256:93827faaca039f0c3c485cd7c8ed626a9443d2868b762954d5f5f2f40352490a" -> "sha256:fe6b1d21dac287fea397b75fdc6b6d154beae8f40504cbf85951e20e6524d2a0" [label=""];
  "sha256:fe6b1d21dac287fea397b75fdc6b6d154beae8f40504cbf85951e20e6524d2a0" -> "sha256:e0c3884e4f4fdeeafb0beb8d66d1b3d08bb34d04db445dfe6f06e41bc2a3d1b1" [label=""];
  "sha256:e0c3884e4f4fdeeafb0beb8d66d1b3d08bb34d04db445dfe6f06e41bc2a3d1b1" -> "sha256:d9bff391ccfb5179711c2151e5b17d59b3518cdc7e5dbfefc0692be8d1c9f9ec" [label=""];
  "sha256:d9bff391ccfb5179711c2151e5b17d59b3518cdc7e5dbfefc0692be8d1c9f9ec" -> "sha256:45812807cb0ddc451f7b01541ac227e4f0a2a79a56b8176245609dbb392418a8" [label=""];
}

