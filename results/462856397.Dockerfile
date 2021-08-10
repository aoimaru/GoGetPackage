[app/sources/462856397.Dockerfile]
digraph {
  "sha256:0317b3f16d76a5aafd9ab1c1b602cc59408f797e428d16f8b6e7866e116f5ff2" [label="local://context" shape="ellipse"];
  "sha256:c250975a8d4b1f3aab2a941aef2c75d7ef76d76912779af660aa8b559a19be54" [label="docker-image://docker.io/library/ubuntu:17.10@sha256:3b811ac794645dfaa47408f4333ac6e433858ff16908965c68f63d5d315acf94" shape="ellipse"];
  "sha256:98feb566d970f3e7599793ccb762af316e7bb446733a3da5ab5481a4043f96bf" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:38b4f9382e807e7fa30dbe6caf3f2792a28b0aebcc81b999ff706e21082beeb0" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:d415b83c348962c71f3bf84cf78f05a976debf2c2bddea864671a0fdf57c6a51" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   wget   tar   git   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:d25fbfd1e5c83cf677adbc60b5afac7e730024abe7aa55a812ad0fae2c888c5f" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:88912a284eac7f9f6d25c8d5dca0c719dbab0e3069db290fb76cbf0e759edc33" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:665c1a57a0db5bcf3b4c93db820c925ea2dcff985cf02a8e60307f7a59be32fe" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:f26d5f99398e75cfc7142262663d140eb4b49ce5d9d3ee7e1a58e7c40a74f06f" [label="/bin/sh -c go get -v github.com/coreos/gofail   && pushd ${GOPATH}/src/github.com/coreos/etcd   && GO_BUILD_FLAGS=\"-v\" ./build   && cp ./bin/etcd /etcd   && cp ./bin/etcdctl /etcdctl   && GO_BUILD_FLAGS=\"-v\" FAILPOINTS=1 ./build   && cp ./bin/etcd /etcd-failpoints   && ./tools/functional-tester/build   && cp ./bin/etcd-agent /etcd-agent   && cp ./bin/etcd-tester /etcd-tester   && cp ./bin/etcd-runner /etcd-runner   && go build -v -o /benchmark ./cmd/tools/benchmark   && go build -v -o /etcd-test-proxy ./cmd/tools/etcd-test-proxy   && popd   && rm -rf ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:7b8d82f0b07f74f138e2e63fdbea566088002f956e52e08b447f1f012d67b1b5" [label="sha256:7b8d82f0b07f74f138e2e63fdbea566088002f956e52e08b447f1f012d67b1b5" shape="plaintext"];
  "sha256:c250975a8d4b1f3aab2a941aef2c75d7ef76d76912779af660aa8b559a19be54" -> "sha256:98feb566d970f3e7599793ccb762af316e7bb446733a3da5ab5481a4043f96bf" [label=""];
  "sha256:98feb566d970f3e7599793ccb762af316e7bb446733a3da5ab5481a4043f96bf" -> "sha256:38b4f9382e807e7fa30dbe6caf3f2792a28b0aebcc81b999ff706e21082beeb0" [label=""];
  "sha256:38b4f9382e807e7fa30dbe6caf3f2792a28b0aebcc81b999ff706e21082beeb0" -> "sha256:d415b83c348962c71f3bf84cf78f05a976debf2c2bddea864671a0fdf57c6a51" [label=""];
  "sha256:d415b83c348962c71f3bf84cf78f05a976debf2c2bddea864671a0fdf57c6a51" -> "sha256:d25fbfd1e5c83cf677adbc60b5afac7e730024abe7aa55a812ad0fae2c888c5f" [label=""];
  "sha256:d25fbfd1e5c83cf677adbc60b5afac7e730024abe7aa55a812ad0fae2c888c5f" -> "sha256:88912a284eac7f9f6d25c8d5dca0c719dbab0e3069db290fb76cbf0e759edc33" [label=""];
  "sha256:88912a284eac7f9f6d25c8d5dca0c719dbab0e3069db290fb76cbf0e759edc33" -> "sha256:665c1a57a0db5bcf3b4c93db820c925ea2dcff985cf02a8e60307f7a59be32fe" [label=""];
  "sha256:0317b3f16d76a5aafd9ab1c1b602cc59408f797e428d16f8b6e7866e116f5ff2" -> "sha256:665c1a57a0db5bcf3b4c93db820c925ea2dcff985cf02a8e60307f7a59be32fe" [label=""];
  "sha256:665c1a57a0db5bcf3b4c93db820c925ea2dcff985cf02a8e60307f7a59be32fe" -> "sha256:f26d5f99398e75cfc7142262663d140eb4b49ce5d9d3ee7e1a58e7c40a74f06f" [label=""];
  "sha256:f26d5f99398e75cfc7142262663d140eb4b49ce5d9d3ee7e1a58e7c40a74f06f" -> "sha256:7b8d82f0b07f74f138e2e63fdbea566088002f956e52e08b447f1f012d67b1b5" [label=""];
}

