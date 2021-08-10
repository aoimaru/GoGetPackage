[app/sources/345357739.Dockerfile]
digraph {
  "sha256:538a389575c6f037b456416d481d379599ad230884fe666738d201d5cdaa1a09" [label="docker-image://docker.io/balenalib/qemux86-64-alpine:3.9-build" shape="ellipse"];
  "sha256:c3ab312367ac166d2411aa7132796aa3a21a1040dacfcc8c713058ccf5c396a8" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:d7c1f7c79325645244ed0629b6ead090ea14bcf13371341e397e4b5e6680a3fb" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:b427559d91e4d286aa338c5b9e5f54818f37087cb4f0463848843e3158de31a8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:98db7be05b250e5fa4f73545df9f3f062c03bb429371cc22b59fc59e72fd5c71" [label="mkdir{path=/go}" shape="note"];
  "sha256:f8beb1fe7913480276ac6a4b4b83ad34d1e74cb9320ae6d10bf28ce1835b1862" [label="sha256:f8beb1fe7913480276ac6a4b4b83ad34d1e74cb9320ae6d10bf28ce1835b1862" shape="plaintext"];
  "sha256:538a389575c6f037b456416d481d379599ad230884fe666738d201d5cdaa1a09" -> "sha256:c3ab312367ac166d2411aa7132796aa3a21a1040dacfcc8c713058ccf5c396a8" [label=""];
  "sha256:c3ab312367ac166d2411aa7132796aa3a21a1040dacfcc8c713058ccf5c396a8" -> "sha256:d7c1f7c79325645244ed0629b6ead090ea14bcf13371341e397e4b5e6680a3fb" [label=""];
  "sha256:d7c1f7c79325645244ed0629b6ead090ea14bcf13371341e397e4b5e6680a3fb" -> "sha256:b427559d91e4d286aa338c5b9e5f54818f37087cb4f0463848843e3158de31a8" [label=""];
  "sha256:b427559d91e4d286aa338c5b9e5f54818f37087cb4f0463848843e3158de31a8" -> "sha256:98db7be05b250e5fa4f73545df9f3f062c03bb429371cc22b59fc59e72fd5c71" [label=""];
  "sha256:98db7be05b250e5fa4f73545df9f3f062c03bb429371cc22b59fc59e72fd5c71" -> "sha256:f8beb1fe7913480276ac6a4b4b83ad34d1e74cb9320ae6d10bf28ce1835b1862" [label=""];
}

