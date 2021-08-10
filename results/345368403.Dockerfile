[app/sources/345368403.Dockerfile]
digraph {
  "sha256:455608cc90d320ac8a022e311545c261b8f02e1b17dbbefc3e10949bf466263f" [label="docker-image://docker.io/balenalib/asus-tinker-board-ubuntu:cosmic-run@sha256:a8ad5399945b70853386e1b5f5bd608815e8035f70eda1aa168645ca281ea506" shape="ellipse"];
  "sha256:253b51a50a11e38985bcc875ea4de08574fb06320512d0445a46c47d627cf47c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2cec29ad5978310f4aa591662b76b50e9c73a5e2a00b521d248f153f460d1deb" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:33178a7ea96f0573127759cf44be2b9859cf4d8686d93574bc4cce25816849bb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:db7b2fd1c8b6acfbd95fa01073d417c9ffb07593bba1ef533fff392011e26928" [label="mkdir{path=/go}" shape="note"];
  "sha256:554eaf826f4db39d81bd7a0dead1fb58c53c860c65a48c37297ef328a14394a9" [label="sha256:554eaf826f4db39d81bd7a0dead1fb58c53c860c65a48c37297ef328a14394a9" shape="plaintext"];
  "sha256:455608cc90d320ac8a022e311545c261b8f02e1b17dbbefc3e10949bf466263f" -> "sha256:253b51a50a11e38985bcc875ea4de08574fb06320512d0445a46c47d627cf47c" [label=""];
  "sha256:253b51a50a11e38985bcc875ea4de08574fb06320512d0445a46c47d627cf47c" -> "sha256:2cec29ad5978310f4aa591662b76b50e9c73a5e2a00b521d248f153f460d1deb" [label=""];
  "sha256:2cec29ad5978310f4aa591662b76b50e9c73a5e2a00b521d248f153f460d1deb" -> "sha256:33178a7ea96f0573127759cf44be2b9859cf4d8686d93574bc4cce25816849bb" [label=""];
  "sha256:33178a7ea96f0573127759cf44be2b9859cf4d8686d93574bc4cce25816849bb" -> "sha256:db7b2fd1c8b6acfbd95fa01073d417c9ffb07593bba1ef533fff392011e26928" [label=""];
  "sha256:db7b2fd1c8b6acfbd95fa01073d417c9ffb07593bba1ef533fff392011e26928" -> "sha256:554eaf826f4db39d81bd7a0dead1fb58c53c860c65a48c37297ef328a14394a9" [label=""];
}

