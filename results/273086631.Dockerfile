[app/sources/273086631.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:c7cab79e4430ae3c01ea0ca6cce0ccbf3ee6b25e0d5b4386456cc268b5261d6b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tbtrfs-tools \t\tbuild-essential \t\tcurl \t\tcmake \t\tgcc \t\tgit \t\tlibapparmor-dev \t\tlibdevmapper-dev \t\tlibsqlite3-dev \t\t\t\tca-certificates \t\te2fsprogs \t\tiptables \t\tprocps \t\txfsprogs \t\txz-utils \t\t\t\taufs-tools \t\tvim-common \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:35abdfa15113fa6fbd96802351ea15d71e9c3c878dfb5f303cdc883cd423bd92" [label="/bin/sh -c set -x \t&& export SECCOMP_PATH=\"$(mktemp -d)\" \t&& curl -fsSL \"https://github.com/seccomp/libseccomp/releases/download/v${SECCOMP_VERSION}/libseccomp-${SECCOMP_VERSION}.tar.gz\" \t\t| tar -xzC \"$SECCOMP_PATH\" --strip-components=1 \t&& ( \t\tcd \"$SECCOMP_PATH\" \t\t&& ./configure --prefix=/usr/local \t\t&& make \t\t&& make install \t\t&& ldconfig \t) \t&& rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:650aca857c18fe876f3ec6de9f89e9e4c0e728ba6b0130bbba84b62bd795d65f" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" \t| tar -xzC /usr/local" shape="box"];
  "sha256:35ff060884a95be5c0c25cde02e4b6c11549ada5478682c6ac9d33f3f8b40a8b" [label="local://context" shape="ellipse"];
  "sha256:073cec1744ce854ea2b67615a9a8403f914db20e87b6963ffe87b5539e935ab8" [label="copy{src=/hack/dockerfile/binaries-commits, dest=/tmp/binaries-commits}" shape="note"];
  "sha256:9f85c3ebbbc3237b64ca3fa3243338d3a6d270851da889197a18446a3a53ec3e" [label="copy{src=/hack/dockerfile/install-binaries.sh, dest=/tmp/install-binaries.sh}" shape="note"];
  "sha256:0d5c2a4e62400e7cdb4280c093fc2686c7d484198aa581f8a4a50ac9f4d79167" [label="/bin/sh -c /tmp/install-binaries.sh runc containerd tini proxy" shape="box"];
  "sha256:2a3a6b49e9ad20a06d9ee501393d8399d24c114118185a4bd9eca6a0e21fb439" [label="mkdir{path=/usr/src/docker}" shape="note"];
  "sha256:93f9ed8e7df124d8471ec87b04e9bff99bbcc95f97f010902308e73dcbc7d773" [label="copy{src=/, dest=/usr/src/docker}" shape="note"];
  "sha256:9958af783b033b1b1f9272728cdf464aaaf0421b14dd88f40ba0bc88738397a4" [label="sha256:9958af783b033b1b1f9272728cdf464aaaf0421b14dd88f40ba0bc88738397a4" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label=""];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" -> "sha256:c7cab79e4430ae3c01ea0ca6cce0ccbf3ee6b25e0d5b4386456cc268b5261d6b" [label=""];
  "sha256:c7cab79e4430ae3c01ea0ca6cce0ccbf3ee6b25e0d5b4386456cc268b5261d6b" -> "sha256:35abdfa15113fa6fbd96802351ea15d71e9c3c878dfb5f303cdc883cd423bd92" [label=""];
  "sha256:35abdfa15113fa6fbd96802351ea15d71e9c3c878dfb5f303cdc883cd423bd92" -> "sha256:650aca857c18fe876f3ec6de9f89e9e4c0e728ba6b0130bbba84b62bd795d65f" [label=""];
  "sha256:650aca857c18fe876f3ec6de9f89e9e4c0e728ba6b0130bbba84b62bd795d65f" -> "sha256:073cec1744ce854ea2b67615a9a8403f914db20e87b6963ffe87b5539e935ab8" [label=""];
  "sha256:35ff060884a95be5c0c25cde02e4b6c11549ada5478682c6ac9d33f3f8b40a8b" -> "sha256:073cec1744ce854ea2b67615a9a8403f914db20e87b6963ffe87b5539e935ab8" [label=""];
  "sha256:073cec1744ce854ea2b67615a9a8403f914db20e87b6963ffe87b5539e935ab8" -> "sha256:9f85c3ebbbc3237b64ca3fa3243338d3a6d270851da889197a18446a3a53ec3e" [label=""];
  "sha256:35ff060884a95be5c0c25cde02e4b6c11549ada5478682c6ac9d33f3f8b40a8b" -> "sha256:9f85c3ebbbc3237b64ca3fa3243338d3a6d270851da889197a18446a3a53ec3e" [label=""];
  "sha256:9f85c3ebbbc3237b64ca3fa3243338d3a6d270851da889197a18446a3a53ec3e" -> "sha256:0d5c2a4e62400e7cdb4280c093fc2686c7d484198aa581f8a4a50ac9f4d79167" [label=""];
  "sha256:0d5c2a4e62400e7cdb4280c093fc2686c7d484198aa581f8a4a50ac9f4d79167" -> "sha256:2a3a6b49e9ad20a06d9ee501393d8399d24c114118185a4bd9eca6a0e21fb439" [label=""];
  "sha256:2a3a6b49e9ad20a06d9ee501393d8399d24c114118185a4bd9eca6a0e21fb439" -> "sha256:93f9ed8e7df124d8471ec87b04e9bff99bbcc95f97f010902308e73dcbc7d773" [label=""];
  "sha256:35ff060884a95be5c0c25cde02e4b6c11549ada5478682c6ac9d33f3f8b40a8b" -> "sha256:93f9ed8e7df124d8471ec87b04e9bff99bbcc95f97f010902308e73dcbc7d773" [label=""];
  "sha256:93f9ed8e7df124d8471ec87b04e9bff99bbcc95f97f010902308e73dcbc7d773" -> "sha256:9958af783b033b1b1f9272728cdf464aaaf0421b14dd88f40ba0bc88738397a4" [label=""];
}

