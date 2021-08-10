[app/sources/183759521.Dockerfile]
digraph {
  "sha256:1c8d6dce19ea9333e8f18c64daa3a4da6bdd1f4f8ad8dfd9e114a69038a2d31c" [label="local://context" shape="ellipse"];
  "sha256:bbd9a7a76ee26200c2718475ace82ce30c544752103ad689c0aceb435234f72f" [label="docker-image://docker.io/ppc64le/debian:jessie" shape="ellipse"];
  "sha256:363905c75b7e562388c5459cc81ddbb3323371d5a5064760889cdd47bc55912d" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:b9dad7729c021f7a60c49547aa94b6e4de28b41883b7a9b702d49ef0f00719cb" [label="/bin/sh -c apt-get update && apt-get install -y \tapparmor \tapt-utils \taufs-tools \tautomake \tbash-completion \tbtrfs-tools \tbuild-essential \tcmake \tcreaterepo \tcurl \tdpkg-sig \tgit \tiptables \tjq \tnet-tools \tlibapparmor-dev \tlibcap-dev \tlibsystemd-journal-dev \tlibtool \tmercurial \tpkg-config \tpython-dev \tpython-mock \tpython-pip \tpython-websocket \txfsprogs \ttar \tvim-common \t--no-install-recommends" shape="box"];
  "sha256:f480214e4610bcac9d5dd32ad7c501796770541642dae1e4756d0bfaafe24665" [label="/bin/sh -c mkdir -p /usr/local/lvm2 \t&& curl -fsSL \"https://mirrors.kernel.org/sourceware/lvm2/LVM2.${LVM2_VERSION}.tgz\" \t\t| tar -xzC /usr/local/lvm2 --strip-components=1" shape="box"];
  "sha256:9b71ef3a2376d0df781eb4c601c2ab269d124f7244f7b25d2dbd22ee9f3f98e8" [label="/bin/sh -c cd /usr/local/lvm2 \t&& ./configure \t\t--build=\"$(gcc -print-multiarch)\" \t\t--enable-static_link \t\t--enable-pkgconfig \t&& make -C include \t&& make -C libdm install_device-mapper" shape="box"];
  "sha256:1513653f14ded97359efe58335ba0b76569dc5b62c7057a9d4e34ceba55f468b" [label="/bin/sh -c set -x         && export SECCOMP_PATH=\"$(mktemp -d)\"         && curl -fsSL \"https://github.com/seccomp/libseccomp/releases/download/v${SECCOMP_VERSION}/libseccomp-${SECCOMP_VERSION}.tar.gz\"                 | tar -xzC \"$SECCOMP_PATH\" --strip-components=1         && (                 cd \"$SECCOMP_PATH\"                 && ./configure --prefix=/usr/local                 && make                 && make install                 && ldconfig         )         && rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:ba05729cae0a9925adee6b9fe079a2bba8a43be53d4cd0f470215dc49d045c1d" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" \t| tar -xzC /usr/local" shape="box"];
  "sha256:17a4208be94bb1eb1ee8f6d3ffbc28d442d51623d0b7c747acc8a84cd71385cc" [label="/bin/sh -c git clone https://github.com/golang/tools.git /go/src/golang.org/x/tools \t&& (cd /go/src/golang.org/x/tools && git checkout -q $GO_TOOLS_COMMIT)" shape="box"];
  "sha256:fdb8e4cc22be1041b478fbed45750e621b1107342b1ec709c49bf01e17481afa" [label="/bin/sh -c git clone https://github.com/golang/lint.git /go/src/github.com/golang/lint \t&& (cd /go/src/github.com/golang/lint && git checkout -q $GO_LINT_COMMIT) \t&& go install -v github.com/golang/lint/golint" shape="box"];
  "sha256:4e961f7582c908e3030a8cf9f79601a3ec7790b47a2677e8db76a01f818a7820" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone https://github.com/docker/distribution.git \"$GOPATH/src/github.com/docker/distribution\" \t&& (cd \"$GOPATH/src/github.com/docker/distribution\" && git checkout -q \"$REGISTRY_COMMIT\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/distribution/Godeps/_workspace:$GOPATH\" \t\tgo build -o /usr/local/bin/registry-v2 github.com/docker/distribution/cmd/registry \t&& (cd \"$GOPATH/src/github.com/docker/distribution\" && git checkout -q \"$REGISTRY_COMMIT_SCHEMA1\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/distribution/Godeps/_workspace:$GOPATH\" \t\tgo build -o /usr/local/bin/registry-v2-schema1 github.com/docker/distribution/cmd/registry \t&& rm -rf \"$GOPATH\"" shape="box"];
  "sha256:d35aa30c2e6da61bb015f8665ed41cb9ac3d3926e73e7499ee8e3018790b7ec0" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone https://github.com/docker/notary.git \"$GOPATH/src/github.com/docker/notary\" \t&& (cd \"$GOPATH/src/github.com/docker/notary\" && git checkout -q \"$NOTARY_VERSION\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/notary/vendor:$GOPATH\" \t\tgo build -o /usr/local/bin/notary-server github.com/docker/notary/cmd/notary-server \t&& GOPATH=\"$GOPATH/src/github.com/docker/notary/vendor:$GOPATH\" \t\tgo build -o /usr/local/bin/notary github.com/docker/notary/cmd/notary \t&& rm -rf \"$GOPATH\"" shape="box"];
  "sha256:8716070e2fa929274446854f8cf9fd06054f3e0ff87d090c14637959c795a71e" [label="/bin/sh -c git clone https://github.com/docker/docker-py.git /docker-py \t&& cd /docker-py \t&& git checkout -q $DOCKER_PY_COMMIT \t&& pip install -r test-requirements.txt" shape="box"];
  "sha256:d6f5d7da40f2311086ecbd8da15a11723e0865fb7d162fedf2484148dea8fdab" [label="/bin/sh -c git config --global user.email 'docker-dummy@example.com'" shape="box"];
  "sha256:18d8296eeb8f50dd7855d6af005823a3c5f18cb9a3e7517ae2efe41096828176" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:1902dd7a9e93bd4999b2d39546a36cd2113207383359226adcc76ee0a719c43f" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:5578b6c87d68a53405553a0190bfa9efff25f0090e7ff42e71e65cda8f4e6016" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:b88aef92635983a4f4a8ca8d004a5a4ad10e9f43eed7f1b962de53e2ffbcd3c4" [label="/bin/sh -c ln -sfv $PWD/.bashrc ~/.bashrc" shape="box"];
  "sha256:55656d051e644cd563ed1989ce206313f0a34c1f549041757d264e5147b779c6" [label="/bin/sh -c ln -sv $PWD/contrib/completion/bash/docker /etc/bash_completion.d/docker" shape="box"];
  "sha256:acdae19d73f826a7cf1d44ac9e2362ea55756bc8be1d4c0c378881c149530588" [label="copy{src=/contrib/download-frozen-image-v2.sh, dest=/go/src/github.com/docker/docker/contrib/}" shape="note"];
  "sha256:c986957a1dafe748aa9c8e7bae946d52ae4c236705ef93d502bb131821c272bc" [label="/bin/sh -c ./contrib/download-frozen-image-v2.sh /docker-frozen-images \tppc64le/buildpack-deps:jessie@sha256:1a2f2d2cc8738f14b336aeffc3503b5c9dedf9e1f26c7313cb4999534ad4716f \tppc64le/busybox:latest@sha256:54f34c83adfab20cf0e630d879e210f07b0062cd6caaf16346a61396d50e7584 \tppc64le/debian:jessie@sha256:ea8c5b105e3790f075145b40e4be1e4488c9f33f55e6cc45182047b80a68f892 \tppc64le/hello-world:latest@sha256:7d57adf137665f748956c86089320710b66d08584db3500ed98f4bb3da637c2d" shape="box"];
  "sha256:4d7448d9e7a1fd5ecda673a2e2389ee858a668eb4a694cddd62d67fb11312370" [label="copy{src=/hack/dockerfile/binaries-commits, dest=/tmp/binaries-commits}" shape="note"];
  "sha256:285cd2120486cb333cfa5478da81bbf7d3d970140477845c1c8f90263fe07e49" [label="copy{src=/hack/dockerfile/install-binaries.sh, dest=/tmp/install-binaries.sh}" shape="note"];
  "sha256:9d95396a1195880ef93b4bdade2715198e8461a2c25ba8945781d6fbadb79b27" [label="/bin/sh -c /tmp/install-binaries.sh tomlv vndr runc containerd tini proxy dockercli" shape="box"];
  "sha256:a721e43ecdea616420b4f8fb1c677a12b626ee6977e952d9b50ca4b54ccc1623" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:6b2498de9afbf7c5831880ec266e5a65ed99212fb2e15be081fd62fa94be6458" [label="sha256:6b2498de9afbf7c5831880ec266e5a65ed99212fb2e15be081fd62fa94be6458" shape="plaintext"];
  "sha256:bbd9a7a76ee26200c2718475ace82ce30c544752103ad689c0aceb435234f72f" -> "sha256:363905c75b7e562388c5459cc81ddbb3323371d5a5064760889cdd47bc55912d" [label=""];
  "sha256:363905c75b7e562388c5459cc81ddbb3323371d5a5064760889cdd47bc55912d" -> "sha256:b9dad7729c021f7a60c49547aa94b6e4de28b41883b7a9b702d49ef0f00719cb" [label=""];
  "sha256:b9dad7729c021f7a60c49547aa94b6e4de28b41883b7a9b702d49ef0f00719cb" -> "sha256:f480214e4610bcac9d5dd32ad7c501796770541642dae1e4756d0bfaafe24665" [label=""];
  "sha256:f480214e4610bcac9d5dd32ad7c501796770541642dae1e4756d0bfaafe24665" -> "sha256:9b71ef3a2376d0df781eb4c601c2ab269d124f7244f7b25d2dbd22ee9f3f98e8" [label=""];
  "sha256:9b71ef3a2376d0df781eb4c601c2ab269d124f7244f7b25d2dbd22ee9f3f98e8" -> "sha256:1513653f14ded97359efe58335ba0b76569dc5b62c7057a9d4e34ceba55f468b" [label=""];
  "sha256:1513653f14ded97359efe58335ba0b76569dc5b62c7057a9d4e34ceba55f468b" -> "sha256:ba05729cae0a9925adee6b9fe079a2bba8a43be53d4cd0f470215dc49d045c1d" [label=""];
  "sha256:ba05729cae0a9925adee6b9fe079a2bba8a43be53d4cd0f470215dc49d045c1d" -> "sha256:17a4208be94bb1eb1ee8f6d3ffbc28d442d51623d0b7c747acc8a84cd71385cc" [label=""];
  "sha256:17a4208be94bb1eb1ee8f6d3ffbc28d442d51623d0b7c747acc8a84cd71385cc" -> "sha256:fdb8e4cc22be1041b478fbed45750e621b1107342b1ec709c49bf01e17481afa" [label=""];
  "sha256:fdb8e4cc22be1041b478fbed45750e621b1107342b1ec709c49bf01e17481afa" -> "sha256:4e961f7582c908e3030a8cf9f79601a3ec7790b47a2677e8db76a01f818a7820" [label=""];
  "sha256:4e961f7582c908e3030a8cf9f79601a3ec7790b47a2677e8db76a01f818a7820" -> "sha256:d35aa30c2e6da61bb015f8665ed41cb9ac3d3926e73e7499ee8e3018790b7ec0" [label=""];
  "sha256:d35aa30c2e6da61bb015f8665ed41cb9ac3d3926e73e7499ee8e3018790b7ec0" -> "sha256:8716070e2fa929274446854f8cf9fd06054f3e0ff87d090c14637959c795a71e" [label=""];
  "sha256:8716070e2fa929274446854f8cf9fd06054f3e0ff87d090c14637959c795a71e" -> "sha256:d6f5d7da40f2311086ecbd8da15a11723e0865fb7d162fedf2484148dea8fdab" [label=""];
  "sha256:d6f5d7da40f2311086ecbd8da15a11723e0865fb7d162fedf2484148dea8fdab" -> "sha256:18d8296eeb8f50dd7855d6af005823a3c5f18cb9a3e7517ae2efe41096828176" [label=""];
  "sha256:18d8296eeb8f50dd7855d6af005823a3c5f18cb9a3e7517ae2efe41096828176" -> "sha256:1902dd7a9e93bd4999b2d39546a36cd2113207383359226adcc76ee0a719c43f" [label=""];
  "sha256:1902dd7a9e93bd4999b2d39546a36cd2113207383359226adcc76ee0a719c43f" -> "sha256:5578b6c87d68a53405553a0190bfa9efff25f0090e7ff42e71e65cda8f4e6016" [label=""];
  "sha256:5578b6c87d68a53405553a0190bfa9efff25f0090e7ff42e71e65cda8f4e6016" -> "sha256:b88aef92635983a4f4a8ca8d004a5a4ad10e9f43eed7f1b962de53e2ffbcd3c4" [label=""];
  "sha256:b88aef92635983a4f4a8ca8d004a5a4ad10e9f43eed7f1b962de53e2ffbcd3c4" -> "sha256:55656d051e644cd563ed1989ce206313f0a34c1f549041757d264e5147b779c6" [label=""];
  "sha256:55656d051e644cd563ed1989ce206313f0a34c1f549041757d264e5147b779c6" -> "sha256:acdae19d73f826a7cf1d44ac9e2362ea55756bc8be1d4c0c378881c149530588" [label=""];
  "sha256:1c8d6dce19ea9333e8f18c64daa3a4da6bdd1f4f8ad8dfd9e114a69038a2d31c" -> "sha256:acdae19d73f826a7cf1d44ac9e2362ea55756bc8be1d4c0c378881c149530588" [label=""];
  "sha256:acdae19d73f826a7cf1d44ac9e2362ea55756bc8be1d4c0c378881c149530588" -> "sha256:c986957a1dafe748aa9c8e7bae946d52ae4c236705ef93d502bb131821c272bc" [label=""];
  "sha256:c986957a1dafe748aa9c8e7bae946d52ae4c236705ef93d502bb131821c272bc" -> "sha256:4d7448d9e7a1fd5ecda673a2e2389ee858a668eb4a694cddd62d67fb11312370" [label=""];
  "sha256:1c8d6dce19ea9333e8f18c64daa3a4da6bdd1f4f8ad8dfd9e114a69038a2d31c" -> "sha256:4d7448d9e7a1fd5ecda673a2e2389ee858a668eb4a694cddd62d67fb11312370" [label=""];
  "sha256:4d7448d9e7a1fd5ecda673a2e2389ee858a668eb4a694cddd62d67fb11312370" -> "sha256:285cd2120486cb333cfa5478da81bbf7d3d970140477845c1c8f90263fe07e49" [label=""];
  "sha256:1c8d6dce19ea9333e8f18c64daa3a4da6bdd1f4f8ad8dfd9e114a69038a2d31c" -> "sha256:285cd2120486cb333cfa5478da81bbf7d3d970140477845c1c8f90263fe07e49" [label=""];
  "sha256:285cd2120486cb333cfa5478da81bbf7d3d970140477845c1c8f90263fe07e49" -> "sha256:9d95396a1195880ef93b4bdade2715198e8461a2c25ba8945781d6fbadb79b27" [label=""];
  "sha256:9d95396a1195880ef93b4bdade2715198e8461a2c25ba8945781d6fbadb79b27" -> "sha256:a721e43ecdea616420b4f8fb1c677a12b626ee6977e952d9b50ca4b54ccc1623" [label=""];
  "sha256:1c8d6dce19ea9333e8f18c64daa3a4da6bdd1f4f8ad8dfd9e114a69038a2d31c" -> "sha256:a721e43ecdea616420b4f8fb1c677a12b626ee6977e952d9b50ca4b54ccc1623" [label=""];
  "sha256:a721e43ecdea616420b4f8fb1c677a12b626ee6977e952d9b50ca4b54ccc1623" -> "sha256:6b2498de9afbf7c5831880ec266e5a65ed99212fb2e15be081fd62fa94be6458" [label=""];
}

