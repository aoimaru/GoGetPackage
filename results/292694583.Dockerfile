[app/sources/292694583.Dockerfile]
digraph {
  "sha256:246968bfac90711f8e240153881f52274b36675a8d59c449e180a1d36c45b8b9" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:d8cfdb447a41391587c078be26ac7f4b383f2779909d00f60d3b5dbfe8ada809" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tbtrfs-tools \t\tbuild-essential \t\tcurl \t\tcmake \t\tgcc \t\tgit \t\tlibapparmor-dev \t\tlibdevmapper-dev \t\tca-certificates \t\te2fsprogs \t\tiptables \t\tprocps \t\txfsprogs \t\txz-utils \t\t\t\taufs-tools \t\tvim-common \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dc10ce4edd9203a67eb16f896fc5c38cd480843bfc6f39a03dc88abd570e3da3" [label="/bin/sh -c set -x \t&& export SECCOMP_PATH=\"$(mktemp -d)\" \t&& curl -fsSL \"https://github.com/seccomp/libseccomp/releases/download/v${SECCOMP_VERSION}/libseccomp-${SECCOMP_VERSION}.tar.gz\" \t\t| tar -xzC \"$SECCOMP_PATH\" --strip-components=1 \t&& ( \t\tcd \"$SECCOMP_PATH\" \t\t&& ./configure --prefix=/usr/local \t\t&& make \t\t&& make install \t\t&& ldconfig \t) \t&& rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:486d952d0986ba036c35d2a9dcdf97b56e06c9b703236ec9f894bcba6401bc20" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" \t| tar -xzC /usr/local" shape="box"];
  "sha256:642ba8ba9e5cda02f34337e43c28d6955dc2e29c3b42c7873c3b750253a4fa12" [label="copy{src=/hack/dockerfile/binaries-commits, dest=/tmp/binaries-commits}" shape="note"];
  "sha256:3c3f637ecf3e15cfa17308905dbb4ced8c86016f039a27c3896ab781304d6eb3" [label="copy{src=/hack/dockerfile/install-binaries.sh, dest=/tmp/install-binaries.sh}" shape="note"];
  "sha256:39cb101074919ba610a276a8717c3f5ddd7419359fe68af963b4832ce4379dce" [label="/bin/sh -c /tmp/install-binaries.sh runc containerd tini proxy" shape="box"];
  "sha256:59a0a5eed38a6bc78bc235983b1d217228b97425db9509741fc7b5b99ce89c5a" [label="mkdir{path=/usr/src/docker}" shape="note"];
  "sha256:779c294df4b1ef4b6dbdcf1627e3f1f2bfefea62528fa0869531612c7cbee0bb" [label="copy{src=/, dest=/usr/src/docker}" shape="note"];
  "sha256:80cce1c4ad27f7db24064495d1add684fad0e1ddddb76907fce41383b92bbe15" [label="sha256:80cce1c4ad27f7db24064495d1add684fad0e1ddddb76907fce41383b92bbe15" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label=""];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" -> "sha256:d8cfdb447a41391587c078be26ac7f4b383f2779909d00f60d3b5dbfe8ada809" [label=""];
  "sha256:d8cfdb447a41391587c078be26ac7f4b383f2779909d00f60d3b5dbfe8ada809" -> "sha256:dc10ce4edd9203a67eb16f896fc5c38cd480843bfc6f39a03dc88abd570e3da3" [label=""];
  "sha256:dc10ce4edd9203a67eb16f896fc5c38cd480843bfc6f39a03dc88abd570e3da3" -> "sha256:486d952d0986ba036c35d2a9dcdf97b56e06c9b703236ec9f894bcba6401bc20" [label=""];
  "sha256:486d952d0986ba036c35d2a9dcdf97b56e06c9b703236ec9f894bcba6401bc20" -> "sha256:642ba8ba9e5cda02f34337e43c28d6955dc2e29c3b42c7873c3b750253a4fa12" [label=""];
  "sha256:246968bfac90711f8e240153881f52274b36675a8d59c449e180a1d36c45b8b9" -> "sha256:642ba8ba9e5cda02f34337e43c28d6955dc2e29c3b42c7873c3b750253a4fa12" [label=""];
  "sha256:642ba8ba9e5cda02f34337e43c28d6955dc2e29c3b42c7873c3b750253a4fa12" -> "sha256:3c3f637ecf3e15cfa17308905dbb4ced8c86016f039a27c3896ab781304d6eb3" [label=""];
  "sha256:246968bfac90711f8e240153881f52274b36675a8d59c449e180a1d36c45b8b9" -> "sha256:3c3f637ecf3e15cfa17308905dbb4ced8c86016f039a27c3896ab781304d6eb3" [label=""];
  "sha256:3c3f637ecf3e15cfa17308905dbb4ced8c86016f039a27c3896ab781304d6eb3" -> "sha256:39cb101074919ba610a276a8717c3f5ddd7419359fe68af963b4832ce4379dce" [label=""];
  "sha256:39cb101074919ba610a276a8717c3f5ddd7419359fe68af963b4832ce4379dce" -> "sha256:59a0a5eed38a6bc78bc235983b1d217228b97425db9509741fc7b5b99ce89c5a" [label=""];
  "sha256:59a0a5eed38a6bc78bc235983b1d217228b97425db9509741fc7b5b99ce89c5a" -> "sha256:779c294df4b1ef4b6dbdcf1627e3f1f2bfefea62528fa0869531612c7cbee0bb" [label=""];
  "sha256:246968bfac90711f8e240153881f52274b36675a8d59c449e180a1d36c45b8b9" -> "sha256:779c294df4b1ef4b6dbdcf1627e3f1f2bfefea62528fa0869531612c7cbee0bb" [label=""];
  "sha256:779c294df4b1ef4b6dbdcf1627e3f1f2bfefea62528fa0869531612c7cbee0bb" -> "sha256:80cce1c4ad27f7db24064495d1add684fad0e1ddddb76907fce41383b92bbe15" [label=""];
}

