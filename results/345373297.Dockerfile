[app/sources/345373297.Dockerfile]
digraph {
  "sha256:d4cc1d1362a9a27fd57c8c29f10aa9bac868ff295b98e791f85166af5196c7ae" [label="docker-image://docker.io/balenalib/jetson-tx1-ubuntu:artful-build" shape="ellipse"];
  "sha256:21b63bd61ff86dffce3b02f7a92b14179107b50cf295b3dd2a239de675dc4343" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:234418a08f5fa6609a0efb034921a602443aaee2c9d8e5c3a297d7ab43ef9ae1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6c3b43316706ec067ff4e497365e71603224cfb67d7872e2657815c7b4e25843" [label="mkdir{path=/go}" shape="note"];
  "sha256:1b7e006cd15e7517e6c0e00cfbfa92967c7af87dc8c3b51a9c15cae010c16f86" [label="sha256:1b7e006cd15e7517e6c0e00cfbfa92967c7af87dc8c3b51a9c15cae010c16f86" shape="plaintext"];
  "sha256:d4cc1d1362a9a27fd57c8c29f10aa9bac868ff295b98e791f85166af5196c7ae" -> "sha256:21b63bd61ff86dffce3b02f7a92b14179107b50cf295b3dd2a239de675dc4343" [label=""];
  "sha256:21b63bd61ff86dffce3b02f7a92b14179107b50cf295b3dd2a239de675dc4343" -> "sha256:234418a08f5fa6609a0efb034921a602443aaee2c9d8e5c3a297d7ab43ef9ae1" [label=""];
  "sha256:234418a08f5fa6609a0efb034921a602443aaee2c9d8e5c3a297d7ab43ef9ae1" -> "sha256:6c3b43316706ec067ff4e497365e71603224cfb67d7872e2657815c7b4e25843" [label=""];
  "sha256:6c3b43316706ec067ff4e497365e71603224cfb67d7872e2657815c7b4e25843" -> "sha256:1b7e006cd15e7517e6c0e00cfbfa92967c7af87dc8c3b51a9c15cae010c16f86" [label=""];
}

