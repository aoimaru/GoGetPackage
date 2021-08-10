[app/sources/345368220.Dockerfile]
digraph {
  "sha256:e295c300f7243fbd3826ae4b4684be96575e7ba0106e31abe8865c2f84a5557e" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-alpine:3.7-build" shape="ellipse"];
  "sha256:71c0e9038404a875a05133358a77c93bc0decda8236404e41a2402903844bde4" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:ea3b5d47872b914cee19c85f2dbab878d6579ed0bdf049d0bf65c485e65b7df6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:d27d8af14591f7debe8b0070fba61cf89fe56e91150a24f2ec3ef47ac971c8df" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:27eab992b78224975950b77271bfdb23487ac9fdb8615db84c5dbc27d3a7e6b3" [label="mkdir{path=/go}" shape="note"];
  "sha256:637b1f1b62c60804f2a9ec71ce5597bf9bb25fd6fcb7a5550b7c5e538cf233ff" [label="sha256:637b1f1b62c60804f2a9ec71ce5597bf9bb25fd6fcb7a5550b7c5e538cf233ff" shape="plaintext"];
  "sha256:e295c300f7243fbd3826ae4b4684be96575e7ba0106e31abe8865c2f84a5557e" -> "sha256:71c0e9038404a875a05133358a77c93bc0decda8236404e41a2402903844bde4" [label=""];
  "sha256:71c0e9038404a875a05133358a77c93bc0decda8236404e41a2402903844bde4" -> "sha256:ea3b5d47872b914cee19c85f2dbab878d6579ed0bdf049d0bf65c485e65b7df6" [label=""];
  "sha256:ea3b5d47872b914cee19c85f2dbab878d6579ed0bdf049d0bf65c485e65b7df6" -> "sha256:d27d8af14591f7debe8b0070fba61cf89fe56e91150a24f2ec3ef47ac971c8df" [label=""];
  "sha256:d27d8af14591f7debe8b0070fba61cf89fe56e91150a24f2ec3ef47ac971c8df" -> "sha256:27eab992b78224975950b77271bfdb23487ac9fdb8615db84c5dbc27d3a7e6b3" [label=""];
  "sha256:27eab992b78224975950b77271bfdb23487ac9fdb8615db84c5dbc27d3a7e6b3" -> "sha256:637b1f1b62c60804f2a9ec71ce5597bf9bb25fd6fcb7a5550b7c5e538cf233ff" [label=""];
}

