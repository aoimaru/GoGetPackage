[app/sources/478291713.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:6f9f7cc8afad157b054559efb36c6309b9570e743a5dc2ac8c40f58612702524" [label="local://context" shape="ellipse"];
  "sha256:b24b375c56c45ed84483001cb1d17477444f7c90a46668c381e6d997bd3e3c08" [label="copy{src=/bin/docker-entrypoint.sh, dest=/data/bin/}" shape="note"];
  "sha256:c4d31c816907b92e9e2c8e72bbf9a0e736911f284b2f3b0c9f1ece6f1d991748" [label="/bin/sh -c adduser --disabled-password --gecos '' kube &&     DEBIAN_FRONTEND=noninteractive apt-get -y update &&     dpkg -l > /var/tmp/dpkg_pre_deps.txt &&     DEBIAN_FRONTEND=noninteractive apt-get -y install wget make git gcc &&     wget -nv --no-check-certificate https://storage.googleapis.com/golang/go${GO_VER}.linux-amd64.tar.gz &&     shasum -a 256 go${GO_VER}.linux-amd64.tar.gz | grep ${GO_SHA256} &&     tar -C /usr/local -xzf go${GO_VER}.linux-amd64.tar.gz &&     rm -f go${GO_VER}.linux-amd64.tar.gz &&     mkdir -p ${GOPATH}/{src,bin,pkg} &&     git clone --depth 1 https://github.com/mbogus/kube-amqp-autoscale.git ${SRC_PATH} &&     cd ${SRC_PATH} &&     make depend &&     make test &&     make &&     mv .build/autoscale ${BIN_DIR} &&     chmod +x ${BIN_DIR}/* &&     cd ${HOME} &&     rm -rf ${GOPATH} &&     rm -rf /usr/local/go &&     chown -Rf kube:kube /data &&     DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove wget make git gcc ifupdown iproute2 less manpages netbase openssh-client perl perl-modules-5.26 rename xauth &&     DEBIAN_FRONTEND=noninteractive apt-get autoremove -y --purge &&     DEBIAN_FRONTEND=noninteractive apt-get clean -y &&     dpkg -l > /var/tmp/dpkg_post_deps.txt &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:08c22e979b7e65c43ea1b4410cac961cdb6db4771f869edacea8be133977d7bb" [label="mkdir{path=/data/bin}" shape="note"];
  "sha256:2b8bac497c2585ef7ddf252963b0bbd91d379c02242b96ebe3bd0de332e43d81" [label="sha256:2b8bac497c2585ef7ddf252963b0bbd91d379c02242b96ebe3bd0de332e43d81" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:b24b375c56c45ed84483001cb1d17477444f7c90a46668c381e6d997bd3e3c08" [label=""];
  "sha256:6f9f7cc8afad157b054559efb36c6309b9570e743a5dc2ac8c40f58612702524" -> "sha256:b24b375c56c45ed84483001cb1d17477444f7c90a46668c381e6d997bd3e3c08" [label=""];
  "sha256:b24b375c56c45ed84483001cb1d17477444f7c90a46668c381e6d997bd3e3c08" -> "sha256:c4d31c816907b92e9e2c8e72bbf9a0e736911f284b2f3b0c9f1ece6f1d991748" [label=""];
  "sha256:c4d31c816907b92e9e2c8e72bbf9a0e736911f284b2f3b0c9f1ece6f1d991748" -> "sha256:08c22e979b7e65c43ea1b4410cac961cdb6db4771f869edacea8be133977d7bb" [label=""];
  "sha256:08c22e979b7e65c43ea1b4410cac961cdb6db4771f869edacea8be133977d7bb" -> "sha256:2b8bac497c2585ef7ddf252963b0bbd91d379c02242b96ebe3bd0de332e43d81" [label=""];
}

