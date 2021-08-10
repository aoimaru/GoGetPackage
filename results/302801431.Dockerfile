[app/sources/302801431.Dockerfile]
digraph {
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:a0097109237a6e1c98c4067a0c74ff4964eb377b1271761bf421ff17233a6ddb" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:af3bce077bff78e899e4321b05d31aa922b7186971f0d9b7f5f2885acb933e51" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:ac96c34b8ddb5e14fafb0b0b504da6b41af26b9901f972081b791362f67dfe34" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   wget   tar   git   netcat   libaspell-dev   libhunspell-dev   hunspell-en-us   aspell-en   shellcheck   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:88daafdf2761fb93f3f1fa5120a8b3e00e5f57170fcb2a015d52b12d3b5ce48d" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:fafc4d5974024c30b874b248035a388ee847d9e3a0abeb8b57fef90fd0883784" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:f57283f6b850869335121fe6a21eb14a6c77b778012982656907c776483f0663" [label="mkdir{path=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:9099d1d5c1881bcb4860bcaebf6e36c54e8f3dd7553a09ac6ed0c61e9ec8419a" [label="local://context" shape="ellipse"];
  "sha256:bb6a9e965fc8873077362587bc1e2fa35610ea6050d925ef1e2a6c08e0ad5c9a" [label="copy{src=/scripts/install-marker.sh, dest=/tmp/install-marker.sh}" shape="note"];
  "sha256:878c5e951094208c18c2964aa130ef36ce403a51cd75fe9e9f0f8e570b99653e" [label="/bin/sh -c go get -v -u -tags spell github.com/chzchzchz/goword   && go get -v -u github.com/coreos/license-bill-of-materials   && go get -v -u honnef.co/go/tools/cmd/gosimple   && go get -v -u honnef.co/go/tools/cmd/unused   && go get -v -u honnef.co/go/tools/cmd/staticcheck   && go get -v -u github.com/gyuho/gocovmerge   && go get -v -u github.com/gordonklaus/ineffassign   && go get -v -u github.com/alexkohler/nakedret   && /tmp/install-marker.sh amd64   && rm -f /tmp/install-marker.sh   && curl -s https://codecov.io/bash >/codecov   && chmod 700 /codecov" shape="box"];
  "sha256:9895d59558f7181cc4951d1d8929c443ba8b615052437b60b72d04a6c64a3be4" [label="sha256:9895d59558f7181cc4951d1d8929c443ba8b615052437b60b72d04a6c64a3be4" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:a0097109237a6e1c98c4067a0c74ff4964eb377b1271761bf421ff17233a6ddb" [label=""];
  "sha256:a0097109237a6e1c98c4067a0c74ff4964eb377b1271761bf421ff17233a6ddb" -> "sha256:af3bce077bff78e899e4321b05d31aa922b7186971f0d9b7f5f2885acb933e51" [label=""];
  "sha256:af3bce077bff78e899e4321b05d31aa922b7186971f0d9b7f5f2885acb933e51" -> "sha256:ac96c34b8ddb5e14fafb0b0b504da6b41af26b9901f972081b791362f67dfe34" [label=""];
  "sha256:ac96c34b8ddb5e14fafb0b0b504da6b41af26b9901f972081b791362f67dfe34" -> "sha256:88daafdf2761fb93f3f1fa5120a8b3e00e5f57170fcb2a015d52b12d3b5ce48d" [label=""];
  "sha256:88daafdf2761fb93f3f1fa5120a8b3e00e5f57170fcb2a015d52b12d3b5ce48d" -> "sha256:fafc4d5974024c30b874b248035a388ee847d9e3a0abeb8b57fef90fd0883784" [label=""];
  "sha256:fafc4d5974024c30b874b248035a388ee847d9e3a0abeb8b57fef90fd0883784" -> "sha256:f57283f6b850869335121fe6a21eb14a6c77b778012982656907c776483f0663" [label=""];
  "sha256:f57283f6b850869335121fe6a21eb14a6c77b778012982656907c776483f0663" -> "sha256:bb6a9e965fc8873077362587bc1e2fa35610ea6050d925ef1e2a6c08e0ad5c9a" [label=""];
  "sha256:9099d1d5c1881bcb4860bcaebf6e36c54e8f3dd7553a09ac6ed0c61e9ec8419a" -> "sha256:bb6a9e965fc8873077362587bc1e2fa35610ea6050d925ef1e2a6c08e0ad5c9a" [label=""];
  "sha256:bb6a9e965fc8873077362587bc1e2fa35610ea6050d925ef1e2a6c08e0ad5c9a" -> "sha256:878c5e951094208c18c2964aa130ef36ce403a51cd75fe9e9f0f8e570b99653e" [label=""];
  "sha256:878c5e951094208c18c2964aa130ef36ce403a51cd75fe9e9f0f8e570b99653e" -> "sha256:9895d59558f7181cc4951d1d8929c443ba8b615052437b60b72d04a6c64a3be4" [label=""];
}

