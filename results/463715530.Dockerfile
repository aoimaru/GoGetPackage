[app/sources/463715530.Dockerfile]
digraph {
  "sha256:f51f94cb6c8af1416ce836874b9da19b3460625928dc9cd2207a723635ba1779" [label="local://context" shape="ellipse"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:80be913c969e2f07f23e124feb08b7ec730bbba365b16c6480bf07e1926358a8" [label="/bin/sh -c dnf check-update || true   && dnf install --assumeyes   git curl wget mercurial meld gcc gcc-c++ which   gcc automake autoconf dh-autoreconf libtool libtool-ltdl   tar unzip gzip   && dnf check-update || true   && dnf upgrade --assumeyes || true   && dnf autoremove --assumeyes || true   && dnf clean all || true" shape="box"];
  "sha256:325d811013c8c54d55b3a85812ed9695e2f56f7ea0a5ef4c5fed89790ceae7cc" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:77c5d088ae30369e55dab3673d28bd154e95572b690f293aacac33882118db53" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:fe1f6d69094c75a4402f91be22012bc85976888afed0fbffd3c59b72620b8fe6" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:66ea2e4fee4319d13c9189846b2cb603a36a2f9eb06a23dfe0f1de583f9b1c63" [label="copy{src=/functional.yaml, dest=/functional.yaml}" shape="note"];
  "sha256:f236c0c07c8a67fc7baf1471acd6063532cd5afa77864f5e1e31a12385bbfb10" [label="/bin/sh -c go get -v github.com/coreos/gofail   && pushd ${GOPATH}/src/github.com/coreos/etcd   && GO_BUILD_FLAGS=\"-v\" ./build   && mkdir -p /bin   && cp ./bin/etcd /bin/etcd   && cp ./bin/etcdctl /bin/etcdctl   && GO_BUILD_FLAGS=\"-v\" FAILPOINTS=1 ./build   && cp ./bin/etcd /bin/etcd-failpoints   && ./functional/build   && cp ./bin/etcd-agent /bin/etcd-agent   && cp ./bin/etcd-proxy /bin/etcd-proxy   && cp ./bin/etcd-runner /bin/etcd-runner   && cp ./bin/etcd-tester /bin/etcd-tester   && go build -v -o /bin/benchmark ./tools/benchmark   && popd   && rm -rf ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:892235ef4ac74a0e5fb19b6c9872dd63e5b5662b688171740cc27313e31db8f8" [label="sha256:892235ef4ac74a0e5fb19b6c9872dd63e5b5662b688171740cc27313e31db8f8" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:80be913c969e2f07f23e124feb08b7ec730bbba365b16c6480bf07e1926358a8" [label=""];
  "sha256:80be913c969e2f07f23e124feb08b7ec730bbba365b16c6480bf07e1926358a8" -> "sha256:325d811013c8c54d55b3a85812ed9695e2f56f7ea0a5ef4c5fed89790ceae7cc" [label=""];
  "sha256:325d811013c8c54d55b3a85812ed9695e2f56f7ea0a5ef4c5fed89790ceae7cc" -> "sha256:77c5d088ae30369e55dab3673d28bd154e95572b690f293aacac33882118db53" [label=""];
  "sha256:77c5d088ae30369e55dab3673d28bd154e95572b690f293aacac33882118db53" -> "sha256:fe1f6d69094c75a4402f91be22012bc85976888afed0fbffd3c59b72620b8fe6" [label=""];
  "sha256:f51f94cb6c8af1416ce836874b9da19b3460625928dc9cd2207a723635ba1779" -> "sha256:fe1f6d69094c75a4402f91be22012bc85976888afed0fbffd3c59b72620b8fe6" [label=""];
  "sha256:fe1f6d69094c75a4402f91be22012bc85976888afed0fbffd3c59b72620b8fe6" -> "sha256:66ea2e4fee4319d13c9189846b2cb603a36a2f9eb06a23dfe0f1de583f9b1c63" [label=""];
  "sha256:f51f94cb6c8af1416ce836874b9da19b3460625928dc9cd2207a723635ba1779" -> "sha256:66ea2e4fee4319d13c9189846b2cb603a36a2f9eb06a23dfe0f1de583f9b1c63" [label=""];
  "sha256:66ea2e4fee4319d13c9189846b2cb603a36a2f9eb06a23dfe0f1de583f9b1c63" -> "sha256:f236c0c07c8a67fc7baf1471acd6063532cd5afa77864f5e1e31a12385bbfb10" [label=""];
  "sha256:f236c0c07c8a67fc7baf1471acd6063532cd5afa77864f5e1e31a12385bbfb10" -> "sha256:892235ef4ac74a0e5fb19b6c9872dd63e5b5662b688171740cc27313e31db8f8" [label=""];
}

