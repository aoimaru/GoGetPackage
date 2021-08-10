[app/sources/226795497.Dockerfile]
digraph {
  "sha256:2cdedec2e4f70759b40a3991865ff0fa7ac7c7aee0e8bf0cd1499ce004f6c415" [label="docker-image://docker.io/s390x/gcc:6.1" shape="ellipse"];
  "sha256:df0fff13563b28fe0eead8622c3c708f88fd456a58dc9cc0e6ca7537ff4503eb" [label="/bin/sh -c apt-get update && apt-get install -y \tapparmor \taufs-tools \tautomake \tbash-completion \tbtrfs-tools \tbuild-essential \tcmake \tcreaterepo \tcurl \tdpkg-sig \tgit \tiptables \tjq \tnet-tools \tlibapparmor-dev \tlibcap-dev \tlibltdl-dev \tlibsqlite3-dev \tlibsystemd-journal-dev \tlibtool \tmercurial \tpkg-config \tpython-dev \tpython-mock \tpython-pip \tpython-websocket \txfsprogs \ttar \tvim-common \t--no-install-recommends" shape="box"];
  "sha256:77bac5ca14cbb9d0c5104bef0f7d932f97dc72d45ddda7935e9018b649cdb4f7" [label="/bin/sh -c echo 'deb http://httpredir.debian.org/debian jessie-proposed-updates main' >> /etc/apt/sources.list.d/pu.list \t&& apt-get update \t&& apt-get install -y libc6 \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b131b72b1d739f69fa5dc4de4167407446082e647d79d060a8a7c19835edf598" [label="/bin/sh -c set -x \t&& export SECCOMP_PATH=\"$(mktemp -d)\" \t&& curl -fsSL \"https://github.com/seccomp/libseccomp/releases/download/v${SECCOMP_VERSION}/libseccomp-${SECCOMP_VERSION}.tar.gz\" \t\t| tar -xzC \"$SECCOMP_PATH\" --strip-components=1 \t&& ( \t\tcd \"$SECCOMP_PATH\" \t\t&& ./configure --prefix=/usr/local \t\t&& make \t\t&& make install \t\t&& ldconfig \t) \t&& rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:182c32768fb7a3d496ee18275384937356763e38d77b8dd89af2f65f9437545c" [label="/bin/sh -c mkdir -p /usr/local/lvm2 \t&& curl -fsSL \"https://mirrors.kernel.org/sourceware/lvm2/LVM2.${LVM2_VERSION}.tgz\" \t\t| tar -xzC /usr/local/lvm2 --strip-components=1" shape="box"];
  "sha256:c68eeaf6d5b93cfeaca52d37b6b6caf6dff34f78014da2bc581a45b0894451cc" [label="/bin/sh -c set -e \t&& for f in config.guess config.sub; do \t\tcurl -fsSL -o \"/usr/local/lvm2/autoconf/$f\" \"http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD\"; \tdone" shape="box"];
  "sha256:806349aa5eb3749037319318ed40e5dcc14dc8e8a1363228de80cb13d6bf5112" [label="/bin/sh -c cd /usr/local/lvm2 \t&& ./configure \t\t--build=\"$(gcc -print-multiarch)\" \t\t--enable-static_link \t&& make device-mapper \t&& make install_device-mapper" shape="box"];
  "sha256:9934b81788eb6e9144cefc5256fc2b7345e6766a48520ad5f1029baac35bb5cf" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\" \t| tar -xzC /usr/local" shape="box"];
  "sha256:d97410cb76b3c990ddcf3eaf45aca1449ae9731f64aca5d64e9dcdba255cc64d" [label="/bin/sh -c git clone https://github.com/golang/tools.git /go/src/golang.org/x/tools \t&& (cd /go/src/golang.org/x/tools && git checkout -q $GO_TOOLS_COMMIT)" shape="box"];
  "sha256:63c6c01403442eecf944671df4c0ad9f53533a2807448f3b95b40a847d585aef" [label="/bin/sh -c git clone https://github.com/golang/lint.git /go/src/github.com/golang/lint \t&& (cd /go/src/github.com/golang/lint && git checkout -q $GO_LINT_COMMIT) \t&& go install -v github.com/golang/lint/golint" shape="box"];
  "sha256:984a7ca3b8ba2d6b32def2fbf3c5fb1a6d3fcf371472f13d451326955d562692" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone https://github.com/docker/distribution.git \"$GOPATH/src/github.com/docker/distribution\" \t&& (cd \"$GOPATH/src/github.com/docker/distribution\" && git checkout -q \"$REGISTRY_COMMIT\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/distribution/Godeps/_workspace:$GOPATH\" \t\tgo build -o /usr/local/bin/registry-v2 github.com/docker/distribution/cmd/registry \t&& (cd \"$GOPATH/src/github.com/docker/distribution\" && git checkout -q \"$REGISTRY_COMMIT_SCHEMA1\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/distribution/Godeps/_workspace:$GOPATH\" \t\tgo build -o /usr/local/bin/registry-v2-schema1 github.com/docker/distribution/cmd/registry \t&& rm -rf \"$GOPATH\"" shape="box"];
  "sha256:e307e5925bf9da0e05623e2071d378bc76ae488fd96e367838150ef02d48de27" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone https://github.com/docker/notary.git \"$GOPATH/src/github.com/docker/notary\" \t&& (cd \"$GOPATH/src/github.com/docker/notary\" && git checkout -q \"$NOTARY_VERSION\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/notary/vendor:$GOPATH\" \t\tgo build -o /usr/local/bin/notary-server github.com/docker/notary/cmd/notary-server \t&& GOPATH=\"$GOPATH/src/github.com/docker/notary/vendor:$GOPATH\" \t\tgo build -o /usr/local/bin/notary github.com/docker/notary/cmd/notary \t&& rm -rf \"$GOPATH\"" shape="box"];
  "sha256:9b1fb44c9e94b09e3f1e550a94583a68248d2eef8bfd6f1f78281300dd62bc63" [label="/bin/sh -c git clone https://github.com/docker/docker-py.git /docker-py \t&& cd /docker-py \t&& git checkout -q $DOCKER_PY_COMMIT \t&& pip install -r test-requirements.txt" shape="box"];
  "sha256:8aa0ef5a3878bcc59cc190dbccc1b4d02077758ff3b6385dd38203e3343d9290" [label="/bin/sh -c git config --global user.email 'docker-dummy@example.com'" shape="box"];
  "sha256:13a46f46c4a2f96377dbb007134c9881aae076a930d3c9b576e72a3c78b33f83" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:830feb8a4c0a81e7b4c9250c0add2ee64a32e494fe9c3c8aca161a9659399e0c" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:37a210858978bc18d1a25b72570f2ae647f018b6359a81a14a5a949b36619d1f" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:6b9f700b9c67dbc0d7c205f1510cf1eb17b8d69c8252087d03398d1cd6b05950" [label="/bin/sh -c ln -sfv $PWD/.bashrc ~/.bashrc" shape="box"];
  "sha256:b2adc23d5880543916820313f44afde01c672625d864040c628806fec0e90929" [label="/bin/sh -c ln -sv $PWD/contrib/completion/bash/docker /etc/bash_completion.d/docker" shape="box"];
  "sha256:9d913a4de790f5012afbef83fe00a5af97628166b74cda0a7d7739cf2344116a" [label="local://context" shape="ellipse"];
  "sha256:15068ca0eb33d780a5985546dd4037902a9216fa442753b43608df27f72eeed9" [label="copy{src=/contrib/download-frozen-image-v2.sh, dest=/go/src/github.com/docker/docker/contrib/}" shape="note"];
  "sha256:af7c3ebe5c8d41cc2062cb670f478b7f82e9da02632a8b7d1d9302f7bdf78ec0" [label="/bin/sh -c ./contrib/download-frozen-image-v2.sh /docker-frozen-images \ts390x/buildpack-deps:jessie@sha256:4d1381224acaca6c4bfe3604de3af6972083a8558a99672cb6989c7541780099 \ts390x/busybox:latest@sha256:dd61522c983884a66ed72d60301925889028c6d2d5e0220a8fe1d9b4c6a4f01b \ts390x/debian:jessie@sha256:b74c863400909eff3c5e196cac9bfd1f6333ce47aae6a38398d87d5875da170a \ts390x/hello-world:latest@sha256:780d80b3a7677c3788c0d5cd9168281320c8d4a6d9183892d8ee5cdd610f5699" shape="box"];
  "sha256:73183b2f2d44d953181f0ebf9a3a7194583d5ace38e5efb14f11389e6d2e966d" [label="copy{src=/hack/dockerfile/binaries-commits, dest=/tmp/binaries-commits}" shape="note"];
  "sha256:39af7393bb7b41401cd9cbaea927439389e9ecfbfd52ff71aadb3e29e1823b0e" [label="copy{src=/hack/dockerfile/install-binaries.sh, dest=/tmp/install-binaries.sh}" shape="note"];
  "sha256:40ffe10fea30735a1fa55e96bd664bcd8e2596590c752b86c0718caea25fa4a0" [label="/bin/sh -c /tmp/install-binaries.sh tomlv vndr runc containerd tini proxy" shape="box"];
  "sha256:07955ef5cd51b29e1cd521329504c8057f24f6cf900c0e6a4ae325c4fb898b88" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:b16aa424e1ea1b43e9a3bc8dd76b194557f877c75f88881a5b7477a4edec59b0" [label="sha256:b16aa424e1ea1b43e9a3bc8dd76b194557f877c75f88881a5b7477a4edec59b0" shape="plaintext"];
  "sha256:2cdedec2e4f70759b40a3991865ff0fa7ac7c7aee0e8bf0cd1499ce004f6c415" -> "sha256:df0fff13563b28fe0eead8622c3c708f88fd456a58dc9cc0e6ca7537ff4503eb" [label=""];
  "sha256:df0fff13563b28fe0eead8622c3c708f88fd456a58dc9cc0e6ca7537ff4503eb" -> "sha256:77bac5ca14cbb9d0c5104bef0f7d932f97dc72d45ddda7935e9018b649cdb4f7" [label=""];
  "sha256:77bac5ca14cbb9d0c5104bef0f7d932f97dc72d45ddda7935e9018b649cdb4f7" -> "sha256:b131b72b1d739f69fa5dc4de4167407446082e647d79d060a8a7c19835edf598" [label=""];
  "sha256:b131b72b1d739f69fa5dc4de4167407446082e647d79d060a8a7c19835edf598" -> "sha256:182c32768fb7a3d496ee18275384937356763e38d77b8dd89af2f65f9437545c" [label=""];
  "sha256:182c32768fb7a3d496ee18275384937356763e38d77b8dd89af2f65f9437545c" -> "sha256:c68eeaf6d5b93cfeaca52d37b6b6caf6dff34f78014da2bc581a45b0894451cc" [label=""];
  "sha256:c68eeaf6d5b93cfeaca52d37b6b6caf6dff34f78014da2bc581a45b0894451cc" -> "sha256:806349aa5eb3749037319318ed40e5dcc14dc8e8a1363228de80cb13d6bf5112" [label=""];
  "sha256:806349aa5eb3749037319318ed40e5dcc14dc8e8a1363228de80cb13d6bf5112" -> "sha256:9934b81788eb6e9144cefc5256fc2b7345e6766a48520ad5f1029baac35bb5cf" [label=""];
  "sha256:9934b81788eb6e9144cefc5256fc2b7345e6766a48520ad5f1029baac35bb5cf" -> "sha256:d97410cb76b3c990ddcf3eaf45aca1449ae9731f64aca5d64e9dcdba255cc64d" [label=""];
  "sha256:d97410cb76b3c990ddcf3eaf45aca1449ae9731f64aca5d64e9dcdba255cc64d" -> "sha256:63c6c01403442eecf944671df4c0ad9f53533a2807448f3b95b40a847d585aef" [label=""];
  "sha256:63c6c01403442eecf944671df4c0ad9f53533a2807448f3b95b40a847d585aef" -> "sha256:984a7ca3b8ba2d6b32def2fbf3c5fb1a6d3fcf371472f13d451326955d562692" [label=""];
  "sha256:984a7ca3b8ba2d6b32def2fbf3c5fb1a6d3fcf371472f13d451326955d562692" -> "sha256:e307e5925bf9da0e05623e2071d378bc76ae488fd96e367838150ef02d48de27" [label=""];
  "sha256:e307e5925bf9da0e05623e2071d378bc76ae488fd96e367838150ef02d48de27" -> "sha256:9b1fb44c9e94b09e3f1e550a94583a68248d2eef8bfd6f1f78281300dd62bc63" [label=""];
  "sha256:9b1fb44c9e94b09e3f1e550a94583a68248d2eef8bfd6f1f78281300dd62bc63" -> "sha256:8aa0ef5a3878bcc59cc190dbccc1b4d02077758ff3b6385dd38203e3343d9290" [label=""];
  "sha256:8aa0ef5a3878bcc59cc190dbccc1b4d02077758ff3b6385dd38203e3343d9290" -> "sha256:13a46f46c4a2f96377dbb007134c9881aae076a930d3c9b576e72a3c78b33f83" [label=""];
  "sha256:13a46f46c4a2f96377dbb007134c9881aae076a930d3c9b576e72a3c78b33f83" -> "sha256:830feb8a4c0a81e7b4c9250c0add2ee64a32e494fe9c3c8aca161a9659399e0c" [label=""];
  "sha256:830feb8a4c0a81e7b4c9250c0add2ee64a32e494fe9c3c8aca161a9659399e0c" -> "sha256:37a210858978bc18d1a25b72570f2ae647f018b6359a81a14a5a949b36619d1f" [label=""];
  "sha256:37a210858978bc18d1a25b72570f2ae647f018b6359a81a14a5a949b36619d1f" -> "sha256:6b9f700b9c67dbc0d7c205f1510cf1eb17b8d69c8252087d03398d1cd6b05950" [label=""];
  "sha256:6b9f700b9c67dbc0d7c205f1510cf1eb17b8d69c8252087d03398d1cd6b05950" -> "sha256:b2adc23d5880543916820313f44afde01c672625d864040c628806fec0e90929" [label=""];
  "sha256:b2adc23d5880543916820313f44afde01c672625d864040c628806fec0e90929" -> "sha256:15068ca0eb33d780a5985546dd4037902a9216fa442753b43608df27f72eeed9" [label=""];
  "sha256:9d913a4de790f5012afbef83fe00a5af97628166b74cda0a7d7739cf2344116a" -> "sha256:15068ca0eb33d780a5985546dd4037902a9216fa442753b43608df27f72eeed9" [label=""];
  "sha256:15068ca0eb33d780a5985546dd4037902a9216fa442753b43608df27f72eeed9" -> "sha256:af7c3ebe5c8d41cc2062cb670f478b7f82e9da02632a8b7d1d9302f7bdf78ec0" [label=""];
  "sha256:af7c3ebe5c8d41cc2062cb670f478b7f82e9da02632a8b7d1d9302f7bdf78ec0" -> "sha256:73183b2f2d44d953181f0ebf9a3a7194583d5ace38e5efb14f11389e6d2e966d" [label=""];
  "sha256:9d913a4de790f5012afbef83fe00a5af97628166b74cda0a7d7739cf2344116a" -> "sha256:73183b2f2d44d953181f0ebf9a3a7194583d5ace38e5efb14f11389e6d2e966d" [label=""];
  "sha256:73183b2f2d44d953181f0ebf9a3a7194583d5ace38e5efb14f11389e6d2e966d" -> "sha256:39af7393bb7b41401cd9cbaea927439389e9ecfbfd52ff71aadb3e29e1823b0e" [label=""];
  "sha256:9d913a4de790f5012afbef83fe00a5af97628166b74cda0a7d7739cf2344116a" -> "sha256:39af7393bb7b41401cd9cbaea927439389e9ecfbfd52ff71aadb3e29e1823b0e" [label=""];
  "sha256:39af7393bb7b41401cd9cbaea927439389e9ecfbfd52ff71aadb3e29e1823b0e" -> "sha256:40ffe10fea30735a1fa55e96bd664bcd8e2596590c752b86c0718caea25fa4a0" [label=""];
  "sha256:40ffe10fea30735a1fa55e96bd664bcd8e2596590c752b86c0718caea25fa4a0" -> "sha256:07955ef5cd51b29e1cd521329504c8057f24f6cf900c0e6a4ae325c4fb898b88" [label=""];
  "sha256:9d913a4de790f5012afbef83fe00a5af97628166b74cda0a7d7739cf2344116a" -> "sha256:07955ef5cd51b29e1cd521329504c8057f24f6cf900c0e6a4ae325c4fb898b88" [label=""];
  "sha256:07955ef5cd51b29e1cd521329504c8057f24f6cf900c0e6a4ae325c4fb898b88" -> "sha256:b16aa424e1ea1b43e9a3bc8dd76b194557f877c75f88881a5b7477a4edec59b0" [label=""];
}

