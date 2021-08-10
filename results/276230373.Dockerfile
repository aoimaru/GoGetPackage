[app/sources/276230373.Dockerfile]
digraph {
  "sha256:a6a0fa4754ba58ef74c1be65f78eeebd9c66cff83ec2cd61f85ce1d3595450bb" [label="local://context" shape="ellipse"];
  "sha256:a243bf0bf9bf113776274b9efe7336438f77e5130ded81b1ff9ce2d1c11f4082" [label="docker-image://docker.io/armhf/debian:jessie" shape="ellipse"];
  "sha256:bc65ed7a7249c1ad631ee711a24b4bb7c7c52ec56af753a22830eff81220a73e" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:fa99733b8f5abc58fa8965fd2ca0fa8e8731815d085aa707977482d63e09ed5b" [label="/bin/sh -c apt-get update && apt-get install -y \tapparmor \taufs-tools \tautomake \tbash-completion \tbtrfs-tools \tbuild-essential \tcreaterepo \tcurl \tcmake \tdpkg-sig \tgit \tiptables \tjq \tnet-tools \tlibapparmor-dev \tlibcap-dev \tlibltdl-dev \tlibsystemd-journal-dev \tlibtool \tmercurial \tpkg-config \tpython-dev \tpython-mock \tpython-pip \tpython-websocket \txfsprogs \ttar \tvim-common \t--no-install-recommends \t&& pip install awscli==1.10.15" shape="box"];
  "sha256:494c3a2a7cf30c5ba84c54b9532c5088cf625bf77b9b1b4b35a09a6e41d5bb95" [label="/bin/sh -c mkdir -p /usr/local/lvm2 \t&& curl -fsSL \"https://mirrors.kernel.org/sourceware/lvm2/LVM2.${LVM2_VERSION}.tgz\" \t\t| tar -xzC /usr/local/lvm2 --strip-components=1" shape="box"];
  "sha256:12a1b63e7bb8e59f152a1155074115598f041d16e5ef5b9d7075b43246c2fef5" [label="/bin/sh -c cd /usr/local/lvm2 \t&& ./configure \t\t--build=\"$(gcc -print-multiarch)\" \t\t--enable-static_link \t&& make device-mapper \t&& make install_device-mapper" shape="box"];
  "sha256:5911e6fe8232223b27ac80a541daeb24c434e36328f895556fb0f565bcfe73f8" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" \t| tar -xzC /usr/local" shape="box"];
  "sha256:a842195fd907d8df1e657465cda8c6cf2c6bfb2d42ad789ea88f1af66bab9ecd" [label="/bin/sh -c git clone https://github.com/golang/tools.git /go/src/golang.org/x/tools \t&& (cd /go/src/golang.org/x/tools && git checkout -q $GO_TOOLS_COMMIT)" shape="box"];
  "sha256:ea429086d35038d3941e830ca6fc2ec94358039a5231b29ae646296ff9724203" [label="/bin/sh -c git clone https://github.com/golang/lint.git /go/src/github.com/golang/lint \t&& (cd /go/src/github.com/golang/lint && git checkout -q $GO_LINT_COMMIT) \t&& go install -v github.com/golang/lint/golint" shape="box"];
  "sha256:74bf93fd2f3604ffbf88c963cf43ba657fadb0d947ded7ddd955ce0167e74d5d" [label="/bin/sh -c set -x \t&& export SECCOMP_PATH=\"$(mktemp -d)\" \t&& curl -fsSL \"https://github.com/seccomp/libseccomp/releases/download/v${SECCOMP_VERSION}/libseccomp-${SECCOMP_VERSION}.tar.gz\" \t\t| tar -xzC \"$SECCOMP_PATH\" --strip-components=1 \t&& ( \t\tcd \"$SECCOMP_PATH\" \t\t&& ./configure --prefix=/usr/local \t\t&& make \t\t&& make install \t\t&& ldconfig \t) \t&& rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:b159b3f0bcd07e9767eb72e23911faf2e522b034ebb48708df890156888cd968" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone https://github.com/docker/distribution.git \"$GOPATH/src/github.com/docker/distribution\" \t&& (cd \"$GOPATH/src/github.com/docker/distribution\" && git checkout -q \"$REGISTRY_COMMIT\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/distribution/Godeps/_workspace:$GOPATH\" \t\tgo build -o /usr/local/bin/registry-v2 github.com/docker/distribution/cmd/registry \t&& (cd \"$GOPATH/src/github.com/docker/distribution\" && git checkout -q \"$REGISTRY_COMMIT_SCHEMA1\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/distribution/Godeps/_workspace:$GOPATH\" \t\tgo build -o /usr/local/bin/registry-v2-schema1 github.com/docker/distribution/cmd/registry \t&& rm -rf \"$GOPATH\"" shape="box"];
  "sha256:9a577b6d1767e63ab63049a72571cb4449ecf17884e38fb90e662864c59f6c59" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone https://github.com/docker/notary.git \"$GOPATH/src/github.com/docker/notary\" \t&& (cd \"$GOPATH/src/github.com/docker/notary\" && git checkout -q \"$NOTARY_VERSION\") \t&& GOPATH=\"$GOPATH/src/github.com/docker/notary/vendor:$GOPATH\" \t\tgo build -o /usr/local/bin/notary-server github.com/docker/notary/cmd/notary-server \t&& GOPATH=\"$GOPATH/src/github.com/docker/notary/vendor:$GOPATH\" \t\tgo build -o /usr/local/bin/notary github.com/docker/notary/cmd/notary \t&& rm -rf \"$GOPATH\"" shape="box"];
  "sha256:02e52841a77abad753982fbc97e9ba7fdf0c35129af5dea4878cb404ea5addf6" [label="/bin/sh -c git clone https://github.com/docker/docker-py.git /docker-py \t&& cd /docker-py \t&& git checkout -q $DOCKER_PY_COMMIT \t&& pip install -r test-requirements.txt" shape="box"];
  "sha256:48038363b1ee113c3658a123d77b248b9be33a6791df22bb4d1e4768b1a809ae" [label="/bin/sh -c git config --global user.email 'docker-dummy@example.com'" shape="box"];
  "sha256:1ea3cc208681023ba7db881936e98703fb4b58abea93ad88a89b5b081486b3ee" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:d39e9b8892bc782dfc332b64412de1e48f190d5c6444fa7b1fc6ef1caa44ab1b" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:d3dc53ad3c4169fcf87723666b264fb79a77870439b1a9df9bfc3ad300a00414" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:3311d7b815350a79ada02b9b157cd95a50c70cc60a16942710fc577b08ba4d47" [label="/bin/sh -c ln -sfv $PWD/.bashrc ~/.bashrc" shape="box"];
  "sha256:6576b592a1d373c4b9ba4ff78924f6a02836c918245f78cd8e14f9d5ff4ea1de" [label="/bin/sh -c ln -sv $PWD/contrib/completion/bash/docker /etc/bash_completion.d/docker" shape="box"];
  "sha256:9f3735601ada7b40848ddc124d740d53e13f316da4788aaeeb5bf43831e25ddf" [label="copy{src=/contrib/download-frozen-image-v2.sh, dest=/go/src/github.com/docker/docker/contrib/}" shape="note"];
  "sha256:6b03a7f451ff045e82fb1f355e6c97ef59722b16d567fd9f44a58bc5ca10fe7d" [label="/bin/sh -c ./contrib/download-frozen-image-v2.sh /docker-frozen-images \tarmhf/buildpack-deps:jessie@sha256:ca6cce8e5bf5c952129889b5cc15cd6aa8d995d77e55e3749bbaadae50e476cb \tarmhf/busybox:latest@sha256:d98a7343ac750ffe387e3d514f8521ba69846c216778919b01414b8617cfb3d4 \tarmhf/debian:jessie@sha256:4a2187483f04a84f9830910fe3581d69b3c985cc045d9f01d8e2f3795b28107b \tarmhf/hello-world:latest@sha256:161dcecea0225975b2ad5f768058212c1e0d39e8211098666ffa1ac74cfb7791" shape="box"];
  "sha256:8788471ae8a2dab8bf1462a8a4f4a3bab541bbc99fd19e0c3a46156aa8600f09" [label="copy{src=/hack/dockerfile/binaries-commits, dest=/tmp/binaries-commits}" shape="note"];
  "sha256:2283abd76e554f96593cf0de7c56ff566f41bc09f8a9cf6062ced9e7718065ec" [label="copy{src=/hack/dockerfile/install-binaries.sh, dest=/tmp/install-binaries.sh}" shape="note"];
  "sha256:91f1072eaabab5f55c5f2b100d07c0b481f453cb17dfa54682408d897d961209" [label="/bin/sh -c /tmp/install-binaries.sh tomlv vndr runc containerd tini proxy" shape="box"];
  "sha256:8dbfec9bf68b9bedb56ce1e99f523c258aadcefbe625e1bf1ae1a5acd2db5cba" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:7aa7bd4966f0215ccb56975b6e8e4b6d4b6be54d63170a07ca9c200de2510344" [label="sha256:7aa7bd4966f0215ccb56975b6e8e4b6d4b6be54d63170a07ca9c200de2510344" shape="plaintext"];
  "sha256:a243bf0bf9bf113776274b9efe7336438f77e5130ded81b1ff9ce2d1c11f4082" -> "sha256:bc65ed7a7249c1ad631ee711a24b4bb7c7c52ec56af753a22830eff81220a73e" [label=""];
  "sha256:bc65ed7a7249c1ad631ee711a24b4bb7c7c52ec56af753a22830eff81220a73e" -> "sha256:fa99733b8f5abc58fa8965fd2ca0fa8e8731815d085aa707977482d63e09ed5b" [label=""];
  "sha256:fa99733b8f5abc58fa8965fd2ca0fa8e8731815d085aa707977482d63e09ed5b" -> "sha256:494c3a2a7cf30c5ba84c54b9532c5088cf625bf77b9b1b4b35a09a6e41d5bb95" [label=""];
  "sha256:494c3a2a7cf30c5ba84c54b9532c5088cf625bf77b9b1b4b35a09a6e41d5bb95" -> "sha256:12a1b63e7bb8e59f152a1155074115598f041d16e5ef5b9d7075b43246c2fef5" [label=""];
  "sha256:12a1b63e7bb8e59f152a1155074115598f041d16e5ef5b9d7075b43246c2fef5" -> "sha256:5911e6fe8232223b27ac80a541daeb24c434e36328f895556fb0f565bcfe73f8" [label=""];
  "sha256:5911e6fe8232223b27ac80a541daeb24c434e36328f895556fb0f565bcfe73f8" -> "sha256:a842195fd907d8df1e657465cda8c6cf2c6bfb2d42ad789ea88f1af66bab9ecd" [label=""];
  "sha256:a842195fd907d8df1e657465cda8c6cf2c6bfb2d42ad789ea88f1af66bab9ecd" -> "sha256:ea429086d35038d3941e830ca6fc2ec94358039a5231b29ae646296ff9724203" [label=""];
  "sha256:ea429086d35038d3941e830ca6fc2ec94358039a5231b29ae646296ff9724203" -> "sha256:74bf93fd2f3604ffbf88c963cf43ba657fadb0d947ded7ddd955ce0167e74d5d" [label=""];
  "sha256:74bf93fd2f3604ffbf88c963cf43ba657fadb0d947ded7ddd955ce0167e74d5d" -> "sha256:b159b3f0bcd07e9767eb72e23911faf2e522b034ebb48708df890156888cd968" [label=""];
  "sha256:b159b3f0bcd07e9767eb72e23911faf2e522b034ebb48708df890156888cd968" -> "sha256:9a577b6d1767e63ab63049a72571cb4449ecf17884e38fb90e662864c59f6c59" [label=""];
  "sha256:9a577b6d1767e63ab63049a72571cb4449ecf17884e38fb90e662864c59f6c59" -> "sha256:02e52841a77abad753982fbc97e9ba7fdf0c35129af5dea4878cb404ea5addf6" [label=""];
  "sha256:02e52841a77abad753982fbc97e9ba7fdf0c35129af5dea4878cb404ea5addf6" -> "sha256:48038363b1ee113c3658a123d77b248b9be33a6791df22bb4d1e4768b1a809ae" [label=""];
  "sha256:48038363b1ee113c3658a123d77b248b9be33a6791df22bb4d1e4768b1a809ae" -> "sha256:1ea3cc208681023ba7db881936e98703fb4b58abea93ad88a89b5b081486b3ee" [label=""];
  "sha256:1ea3cc208681023ba7db881936e98703fb4b58abea93ad88a89b5b081486b3ee" -> "sha256:d39e9b8892bc782dfc332b64412de1e48f190d5c6444fa7b1fc6ef1caa44ab1b" [label=""];
  "sha256:d39e9b8892bc782dfc332b64412de1e48f190d5c6444fa7b1fc6ef1caa44ab1b" -> "sha256:d3dc53ad3c4169fcf87723666b264fb79a77870439b1a9df9bfc3ad300a00414" [label=""];
  "sha256:d3dc53ad3c4169fcf87723666b264fb79a77870439b1a9df9bfc3ad300a00414" -> "sha256:3311d7b815350a79ada02b9b157cd95a50c70cc60a16942710fc577b08ba4d47" [label=""];
  "sha256:3311d7b815350a79ada02b9b157cd95a50c70cc60a16942710fc577b08ba4d47" -> "sha256:6576b592a1d373c4b9ba4ff78924f6a02836c918245f78cd8e14f9d5ff4ea1de" [label=""];
  "sha256:6576b592a1d373c4b9ba4ff78924f6a02836c918245f78cd8e14f9d5ff4ea1de" -> "sha256:9f3735601ada7b40848ddc124d740d53e13f316da4788aaeeb5bf43831e25ddf" [label=""];
  "sha256:a6a0fa4754ba58ef74c1be65f78eeebd9c66cff83ec2cd61f85ce1d3595450bb" -> "sha256:9f3735601ada7b40848ddc124d740d53e13f316da4788aaeeb5bf43831e25ddf" [label=""];
  "sha256:9f3735601ada7b40848ddc124d740d53e13f316da4788aaeeb5bf43831e25ddf" -> "sha256:6b03a7f451ff045e82fb1f355e6c97ef59722b16d567fd9f44a58bc5ca10fe7d" [label=""];
  "sha256:6b03a7f451ff045e82fb1f355e6c97ef59722b16d567fd9f44a58bc5ca10fe7d" -> "sha256:8788471ae8a2dab8bf1462a8a4f4a3bab541bbc99fd19e0c3a46156aa8600f09" [label=""];
  "sha256:a6a0fa4754ba58ef74c1be65f78eeebd9c66cff83ec2cd61f85ce1d3595450bb" -> "sha256:8788471ae8a2dab8bf1462a8a4f4a3bab541bbc99fd19e0c3a46156aa8600f09" [label=""];
  "sha256:8788471ae8a2dab8bf1462a8a4f4a3bab541bbc99fd19e0c3a46156aa8600f09" -> "sha256:2283abd76e554f96593cf0de7c56ff566f41bc09f8a9cf6062ced9e7718065ec" [label=""];
  "sha256:a6a0fa4754ba58ef74c1be65f78eeebd9c66cff83ec2cd61f85ce1d3595450bb" -> "sha256:2283abd76e554f96593cf0de7c56ff566f41bc09f8a9cf6062ced9e7718065ec" [label=""];
  "sha256:2283abd76e554f96593cf0de7c56ff566f41bc09f8a9cf6062ced9e7718065ec" -> "sha256:91f1072eaabab5f55c5f2b100d07c0b481f453cb17dfa54682408d897d961209" [label=""];
  "sha256:91f1072eaabab5f55c5f2b100d07c0b481f453cb17dfa54682408d897d961209" -> "sha256:8dbfec9bf68b9bedb56ce1e99f523c258aadcefbe625e1bf1ae1a5acd2db5cba" [label=""];
  "sha256:a6a0fa4754ba58ef74c1be65f78eeebd9c66cff83ec2cd61f85ce1d3595450bb" -> "sha256:8dbfec9bf68b9bedb56ce1e99f523c258aadcefbe625e1bf1ae1a5acd2db5cba" [label=""];
  "sha256:8dbfec9bf68b9bedb56ce1e99f523c258aadcefbe625e1bf1ae1a5acd2db5cba" -> "sha256:7aa7bd4966f0215ccb56975b6e8e4b6d4b6be54d63170a07ca9c200de2510344" [label=""];
}

