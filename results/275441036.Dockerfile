[app/sources/275441036.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:4c6b2dcfe2d2322aa27533c1e62aa1acf3fb3ef82479272d6592da84c220997f" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y     python-software-properties     software-properties-common     wget     git     mercurial     make     ruby     ruby-dev     rpm     zip     python     python-boto     asciidoc     xmlto     docbook-xsl" shape="box"];
  "sha256:9414e3ecf5d381e6ae4e28fa69109f201b5f71c3e4d4aad26c6abaf476ea6621" [label="/bin/sh -c gem install fpm" shape="box"];
  "sha256:4694d9a787d2d096549d17d0879699b3e0202bacbfc70ba20debb31c4fa86fef" [label="/bin/sh -c wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-${GO_ARCH}.tar.gz;    tar -C /usr/local/ -xf /go${GO_VERSION}.linux-${GO_ARCH}.tar.gz ;    rm /go${GO_VERSION}.linux-${GO_ARCH}.tar.gz" shape="box"];
  "sha256:ee45ad2e61c598600e0d3ed185c84bb7d337f925a3debf7ae68fe817c247f04e" [label="/bin/sh -c mkdir -p $PROJECT_DIR" shape="box"];
  "sha256:62b66ec1b8d18fa83cdb37b833bbccefd670376803debca7b0ed9ee4630bb79d" [label="mkdir{path=/root/go/src/github.com/influxdata/influxdb}" shape="note"];
  "sha256:af652f5e35e9f007c81ed47fe0c97551c7ba5491043205ebc62320066ce3ae71" [label="sha256:af652f5e35e9f007c81ed47fe0c97551c7ba5491043205ebc62320066ce3ae71" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:4c6b2dcfe2d2322aa27533c1e62aa1acf3fb3ef82479272d6592da84c220997f" [label=""];
  "sha256:4c6b2dcfe2d2322aa27533c1e62aa1acf3fb3ef82479272d6592da84c220997f" -> "sha256:9414e3ecf5d381e6ae4e28fa69109f201b5f71c3e4d4aad26c6abaf476ea6621" [label=""];
  "sha256:9414e3ecf5d381e6ae4e28fa69109f201b5f71c3e4d4aad26c6abaf476ea6621" -> "sha256:4694d9a787d2d096549d17d0879699b3e0202bacbfc70ba20debb31c4fa86fef" [label=""];
  "sha256:4694d9a787d2d096549d17d0879699b3e0202bacbfc70ba20debb31c4fa86fef" -> "sha256:ee45ad2e61c598600e0d3ed185c84bb7d337f925a3debf7ae68fe817c247f04e" [label=""];
  "sha256:ee45ad2e61c598600e0d3ed185c84bb7d337f925a3debf7ae68fe817c247f04e" -> "sha256:62b66ec1b8d18fa83cdb37b833bbccefd670376803debca7b0ed9ee4630bb79d" [label=""];
  "sha256:62b66ec1b8d18fa83cdb37b833bbccefd670376803debca7b0ed9ee4630bb79d" -> "sha256:af652f5e35e9f007c81ed47fe0c97551c7ba5491043205ebc62320066ce3ae71" [label=""];
}

