[app/sources/349054691.Dockerfile]
digraph {
  "sha256:5df8e6d7328fe6d193a7eba6480f9c93a3143dd34d44568bdd06f0be6380d39c" [label="local://context" shape="ellipse"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:d29ad009d5f0f23b062a10f0e0e8a52e1853061f98b79287324a466a14b7a0bd" [label="/bin/sh -c dnf check-update || true   && dnf install --assumeyes   git curl wget mercurial meld gcc gcc-c++ which   gcc automake autoconf dh-autoreconf libtool libtool-ltdl   tar unzip gzip   aspell-devel aspell-en hunspell hunspell-devel hunspell-en hunspell-en-US ShellCheck nc || true   && dnf check-update || true   && dnf upgrade --assumeyes || true   && dnf autoremove --assumeyes || true   && dnf clean all || true   && dnf reinstall which || true" shape="box"];
  "sha256:a053ec66c78e13212b1096f9991ba24f6ef7bb78d491dbcf6b5ddf10b7274e0a" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:4ff01c74522c4b23fe742abd034300de6b34534b9d5c6bee9f9c373fb5ca008c" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:9d82a170b3207944a0efa0e55980884b01357cd871e752e0ac17e981516316fa" [label="mkdir{path=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:c7797d5fd41ad60453500995139255b479571d45b4c0d66cd46fab7b65a39365" [label="copy{src=/scripts/install-marker.sh, dest=/tmp/install-marker.sh}" shape="note"];
  "sha256:6543822db9b92e109fbc125f4544e30a366573a8e7885c8f12377e4fa836a9b2" [label="/bin/sh -c ln -s /lib64/libhunspell-1.6.so /lib64/libhunspell.so" shape="box"];
  "sha256:ebcb16efce6b4750713eb47046be336a86d828ea7c4220bf8505da73ce6a7cf4" [label="/bin/sh -c go get -v -u -tags spell github.com/chzchzchz/goword   && go get -v -u github.com/coreos/license-bill-of-materials   && go get -v -u github.com/mdempsky/unconvert   && go get -v -u honnef.co/go/tools/cmd/gosimple   && go get -v -u honnef.co/go/tools/cmd/unused   && go get -v -u honnef.co/go/tools/cmd/staticcheck   && go get -v -u github.com/gyuho/gocovmerge   && go get -v -u github.com/gordonklaus/ineffassign   && go get -v -u github.com/alexkohler/nakedret   && /tmp/install-marker.sh amd64   && rm -f /tmp/install-marker.sh   && curl -s https://codecov.io/bash >/codecov   && chmod 700 /codecov" shape="box"];
  "sha256:f0320402fc11eec6ea4898c3e37719dfc8f7f980a329d92295de454b2d483d3a" [label="sha256:f0320402fc11eec6ea4898c3e37719dfc8f7f980a329d92295de454b2d483d3a" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:d29ad009d5f0f23b062a10f0e0e8a52e1853061f98b79287324a466a14b7a0bd" [label=""];
  "sha256:d29ad009d5f0f23b062a10f0e0e8a52e1853061f98b79287324a466a14b7a0bd" -> "sha256:a053ec66c78e13212b1096f9991ba24f6ef7bb78d491dbcf6b5ddf10b7274e0a" [label=""];
  "sha256:a053ec66c78e13212b1096f9991ba24f6ef7bb78d491dbcf6b5ddf10b7274e0a" -> "sha256:4ff01c74522c4b23fe742abd034300de6b34534b9d5c6bee9f9c373fb5ca008c" [label=""];
  "sha256:4ff01c74522c4b23fe742abd034300de6b34534b9d5c6bee9f9c373fb5ca008c" -> "sha256:9d82a170b3207944a0efa0e55980884b01357cd871e752e0ac17e981516316fa" [label=""];
  "sha256:9d82a170b3207944a0efa0e55980884b01357cd871e752e0ac17e981516316fa" -> "sha256:c7797d5fd41ad60453500995139255b479571d45b4c0d66cd46fab7b65a39365" [label=""];
  "sha256:5df8e6d7328fe6d193a7eba6480f9c93a3143dd34d44568bdd06f0be6380d39c" -> "sha256:c7797d5fd41ad60453500995139255b479571d45b4c0d66cd46fab7b65a39365" [label=""];
  "sha256:c7797d5fd41ad60453500995139255b479571d45b4c0d66cd46fab7b65a39365" -> "sha256:6543822db9b92e109fbc125f4544e30a366573a8e7885c8f12377e4fa836a9b2" [label=""];
  "sha256:6543822db9b92e109fbc125f4544e30a366573a8e7885c8f12377e4fa836a9b2" -> "sha256:ebcb16efce6b4750713eb47046be336a86d828ea7c4220bf8505da73ce6a7cf4" [label=""];
  "sha256:ebcb16efce6b4750713eb47046be336a86d828ea7c4220bf8505da73ce6a7cf4" -> "sha256:f0320402fc11eec6ea4898c3e37719dfc8f7f980a329d92295de454b2d483d3a" [label=""];
}

