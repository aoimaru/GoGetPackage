[app/sources/462860644.Dockerfile]
digraph {
  "sha256:28249ba2e63403cce344ed66eb7aa72dead150aab3aa2c1aebe4d73a36b1c7ce" [label="local://context" shape="ellipse"];
  "sha256:6f84b4d19a96725ee7ae4bc38e4e02d139600bf0b22c6b6e538497236de1029a" [label="docker-image://docker.io/library/fedora:28@sha256:5593a1e2fe65db0e199faca916b5ce7494a9f0e29b7be9f529fb69d1e8ef42d1" shape="ellipse"];
  "sha256:4e5e42f7f6eb8e307dbf9005285a1a2a2e14fbb375e62981a0f526a160e357f6" [label="/bin/sh -c dnf check-update || true   && dnf install --assumeyes   git curl wget mercurial meld gcc gcc-c++ which   gcc automake autoconf dh-autoreconf libtool libtool-ltdl   tar unzip gzip   && dnf check-update || true   && dnf upgrade --assumeyes || true   && dnf autoremove --assumeyes || true   && dnf clean all || true" shape="box"];
  "sha256:5bd24a075d34b12de7df8a3b0aba33d22d7d882524f49c0f242148102a2f3152" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:6784677e9f1b43ce819c4cab463de398cff8fc00df888a1362f84f9a29ff8716" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:e8601ba6a4e511bf1934cade80fc22dd138ad0a0449bec51c3aa5103cc66353c" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:b7d728dae935aa8ff19fd1af5682c8823cb6968ce8ffcd67ec193e07a24c627e" [label="copy{src=/functional.yaml, dest=/functional.yaml}" shape="note"];
  "sha256:a4bf0018f73694432ef07f315cf8efade5a0c2a0b9fe4de2e8609c0d8936f63c" [label="/bin/sh -c go get -v github.com/coreos/gofail   && pushd ${GOPATH}/src/github.com/coreos/etcd   && GO_BUILD_FLAGS=\"-v\" ./build   && mkdir -p /bin   && cp ./bin/etcd /bin/etcd   && cp ./bin/etcdctl /bin/etcdctl   && GO_BUILD_FLAGS=\"-v\" FAILPOINTS=1 ./build   && cp ./bin/etcd /bin/etcd-failpoints   && ./functional/build   && cp ./bin/etcd-agent /bin/etcd-agent   && cp ./bin/etcd-proxy /bin/etcd-proxy   && cp ./bin/etcd-runner /bin/etcd-runner   && cp ./bin/etcd-tester /bin/etcd-tester   && go build -v -o /bin/benchmark ./tools/benchmark   && popd   && rm -rf ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:75a261b22b0dd1f625cc6308120a995b5233f30aefb5f3411e7f414f10ceb949" [label="sha256:75a261b22b0dd1f625cc6308120a995b5233f30aefb5f3411e7f414f10ceb949" shape="plaintext"];
  "sha256:6f84b4d19a96725ee7ae4bc38e4e02d139600bf0b22c6b6e538497236de1029a" -> "sha256:4e5e42f7f6eb8e307dbf9005285a1a2a2e14fbb375e62981a0f526a160e357f6" [label=""];
  "sha256:4e5e42f7f6eb8e307dbf9005285a1a2a2e14fbb375e62981a0f526a160e357f6" -> "sha256:5bd24a075d34b12de7df8a3b0aba33d22d7d882524f49c0f242148102a2f3152" [label=""];
  "sha256:5bd24a075d34b12de7df8a3b0aba33d22d7d882524f49c0f242148102a2f3152" -> "sha256:6784677e9f1b43ce819c4cab463de398cff8fc00df888a1362f84f9a29ff8716" [label=""];
  "sha256:6784677e9f1b43ce819c4cab463de398cff8fc00df888a1362f84f9a29ff8716" -> "sha256:e8601ba6a4e511bf1934cade80fc22dd138ad0a0449bec51c3aa5103cc66353c" [label=""];
  "sha256:28249ba2e63403cce344ed66eb7aa72dead150aab3aa2c1aebe4d73a36b1c7ce" -> "sha256:e8601ba6a4e511bf1934cade80fc22dd138ad0a0449bec51c3aa5103cc66353c" [label=""];
  "sha256:e8601ba6a4e511bf1934cade80fc22dd138ad0a0449bec51c3aa5103cc66353c" -> "sha256:b7d728dae935aa8ff19fd1af5682c8823cb6968ce8ffcd67ec193e07a24c627e" [label=""];
  "sha256:28249ba2e63403cce344ed66eb7aa72dead150aab3aa2c1aebe4d73a36b1c7ce" -> "sha256:b7d728dae935aa8ff19fd1af5682c8823cb6968ce8ffcd67ec193e07a24c627e" [label=""];
  "sha256:b7d728dae935aa8ff19fd1af5682c8823cb6968ce8ffcd67ec193e07a24c627e" -> "sha256:a4bf0018f73694432ef07f315cf8efade5a0c2a0b9fe4de2e8609c0d8936f63c" [label=""];
  "sha256:a4bf0018f73694432ef07f315cf8efade5a0c2a0b9fe4de2e8609c0d8936f63c" -> "sha256:75a261b22b0dd1f625cc6308120a995b5233f30aefb5f3411e7f414f10ceb949" [label=""];
}

