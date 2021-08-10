[app/sources/463718835.Dockerfile]
digraph {
  "sha256:6f84b4d19a96725ee7ae4bc38e4e02d139600bf0b22c6b6e538497236de1029a" [label="docker-image://docker.io/library/fedora:28@sha256:5593a1e2fe65db0e199faca916b5ce7494a9f0e29b7be9f529fb69d1e8ef42d1" shape="ellipse"];
  "sha256:4e5e42f7f6eb8e307dbf9005285a1a2a2e14fbb375e62981a0f526a160e357f6" [label="/bin/sh -c dnf check-update || true   && dnf install --assumeyes   git curl wget mercurial meld gcc gcc-c++ which   gcc automake autoconf dh-autoreconf libtool libtool-ltdl   tar unzip gzip   && dnf check-update || true   && dnf upgrade --assumeyes || true   && dnf autoremove --assumeyes || true   && dnf clean all || true" shape="box"];
  "sha256:5bd24a075d34b12de7df8a3b0aba33d22d7d882524f49c0f242148102a2f3152" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:6784677e9f1b43ce819c4cab463de398cff8fc00df888a1362f84f9a29ff8716" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:88ba44a9b5807685d0f898a42da8896d3ef302d5e1e93cbcb361f8f247d796f1" [label="local://context" shape="ellipse"];
  "sha256:9d673e762f0d31815f74a090ee9b1378909389b2caac6c70a4aab6919f8f3caa" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:5f39e55ac4bcc32d90aa98561dc8500c8b2432a5b2719540045d6e875261f0a6" [label="copy{src=/functional.yaml, dest=/functional.yaml}" shape="note"];
  "sha256:464e209a367bfad07649e8dab8fe5d11fa8b21d329c8fb10a0fbf6c014a04e75" [label="/bin/sh -c go get -v github.com/coreos/gofail   && pushd ${GOPATH}/src/github.com/coreos/etcd   && GO_BUILD_FLAGS=\"-v\" ./build   && mkdir -p /bin   && cp ./bin/etcd /bin/etcd   && cp ./bin/etcdctl /bin/etcdctl   && GO_BUILD_FLAGS=\"-v\" FAILPOINTS=1 ./build   && cp ./bin/etcd /bin/etcd-failpoints   && ./functional/build   && cp ./bin/etcd-agent /bin/etcd-agent   && cp ./bin/etcd-proxy /bin/etcd-proxy   && cp ./bin/etcd-runner /bin/etcd-runner   && cp ./bin/etcd-tester /bin/etcd-tester   && go build -v -o /bin/benchmark ./tools/benchmark   && popd   && rm -rf ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:96abe2ea6a4fddda0b557d0730784e6be97218094f51d650f1c28af8c0eb7980" [label="sha256:96abe2ea6a4fddda0b557d0730784e6be97218094f51d650f1c28af8c0eb7980" shape="plaintext"];
  "sha256:6f84b4d19a96725ee7ae4bc38e4e02d139600bf0b22c6b6e538497236de1029a" -> "sha256:4e5e42f7f6eb8e307dbf9005285a1a2a2e14fbb375e62981a0f526a160e357f6" [label=""];
  "sha256:4e5e42f7f6eb8e307dbf9005285a1a2a2e14fbb375e62981a0f526a160e357f6" -> "sha256:5bd24a075d34b12de7df8a3b0aba33d22d7d882524f49c0f242148102a2f3152" [label=""];
  "sha256:5bd24a075d34b12de7df8a3b0aba33d22d7d882524f49c0f242148102a2f3152" -> "sha256:6784677e9f1b43ce819c4cab463de398cff8fc00df888a1362f84f9a29ff8716" [label=""];
  "sha256:6784677e9f1b43ce819c4cab463de398cff8fc00df888a1362f84f9a29ff8716" -> "sha256:9d673e762f0d31815f74a090ee9b1378909389b2caac6c70a4aab6919f8f3caa" [label=""];
  "sha256:88ba44a9b5807685d0f898a42da8896d3ef302d5e1e93cbcb361f8f247d796f1" -> "sha256:9d673e762f0d31815f74a090ee9b1378909389b2caac6c70a4aab6919f8f3caa" [label=""];
  "sha256:9d673e762f0d31815f74a090ee9b1378909389b2caac6c70a4aab6919f8f3caa" -> "sha256:5f39e55ac4bcc32d90aa98561dc8500c8b2432a5b2719540045d6e875261f0a6" [label=""];
  "sha256:88ba44a9b5807685d0f898a42da8896d3ef302d5e1e93cbcb361f8f247d796f1" -> "sha256:5f39e55ac4bcc32d90aa98561dc8500c8b2432a5b2719540045d6e875261f0a6" [label=""];
  "sha256:5f39e55ac4bcc32d90aa98561dc8500c8b2432a5b2719540045d6e875261f0a6" -> "sha256:464e209a367bfad07649e8dab8fe5d11fa8b21d329c8fb10a0fbf6c014a04e75" [label=""];
  "sha256:464e209a367bfad07649e8dab8fe5d11fa8b21d329c8fb10a0fbf6c014a04e75" -> "sha256:96abe2ea6a4fddda0b557d0730784e6be97218094f51d650f1c28af8c0eb7980" [label=""];
}

