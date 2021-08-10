[app/sources/179223589.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d6e7d952bed6cb7523ec7b90bf194165653c0729d4d098e10f5d735ae19625c0" [label="/bin/sh -c apt-get update && apt-get install -y \tbuild-essential \tca-certificates \tcurl \tgit \tmake \tjq \tapparmor \tlibapparmor-dev \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:892e18d379392b64204559512cc82b76fb34a38a33fa4ff52d7a048c32ae92cb" [label="/bin/sh -c curl -sSL  \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar -v -C /usr/local -xz" shape="box"];
  "sha256:880e2df8c0011bfc8b572cd2916096f2fdc5f3fc70074911dfa160f366a9f390" [label="mkdir{path=/go/src/github.com/docker/containerd}" shape="note"];
  "sha256:1b9f9d9bf5e8ec0a50a05df6583bc3331c78317cb7ce6a5930b0cbe13fcc298e" [label="/bin/sh -c set -x \t&& export SECCOMP_PATH=\"$(mktemp -d)\" \t&& curl -fsSL \"https://github.com/seccomp/libseccomp/releases/download/v${SECCOMP_VERSION}/libseccomp-${SECCOMP_VERSION}.tar.gz\" \t\t| tar -xzC \"$SECCOMP_PATH\" --strip-components=1 \t&& ( \t\tcd \"$SECCOMP_PATH\" \t\t&& ./configure --prefix=/usr/local \t\t&& make \t\t&& make install \t\t&& ldconfig \t) \t&& rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:3dff5e4404938e45e02da06cd971729a11d6b54d57f66da9a518abb93a160380" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\"     && git clone git://github.com/opencontainers/runc.git \"$GOPATH/src/github.com/opencontainers/runc\" \t&& cd \"$GOPATH/src/github.com/opencontainers/runc\" \t&& git checkout -q \"$RUNC_COMMIT\" \t&& make BUILDTAGS=\"seccomp apparmor selinux\" && make install" shape="box"];
  "sha256:705620203c0acb1db4cdeb851954d309a5724f8d7f2cd11a22dbc24134eb1c36" [label="local://context" shape="ellipse"];
  "sha256:8e3162836886a9392935dd757f1aca153e48e55778ae68b5c6c25e9e0549b6ba" [label="copy{src=/, dest=/go/src/github.com/docker/containerd}" shape="note"];
  "sha256:b09108ece28b0099680de525f51e269ef6d93a6ce2e7c71e3cda5bb9abac9802" [label="mkdir{path=/go/src/github.com/docker/containerd}" shape="note"];
  "sha256:238bd91619cf257716e25a72f733454bf377b659d8ac02359df09015b713dd43" [label="/bin/sh -c make all install" shape="box"];
  "sha256:0602d77a85ba47a4b88fe3607f280af46a0a3f4ab41b03528384c2311377ff39" [label="sha256:0602d77a85ba47a4b88fe3607f280af46a0a3f4ab41b03528384c2311377ff39" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d6e7d952bed6cb7523ec7b90bf194165653c0729d4d098e10f5d735ae19625c0" [label=""];
  "sha256:d6e7d952bed6cb7523ec7b90bf194165653c0729d4d098e10f5d735ae19625c0" -> "sha256:892e18d379392b64204559512cc82b76fb34a38a33fa4ff52d7a048c32ae92cb" [label=""];
  "sha256:892e18d379392b64204559512cc82b76fb34a38a33fa4ff52d7a048c32ae92cb" -> "sha256:880e2df8c0011bfc8b572cd2916096f2fdc5f3fc70074911dfa160f366a9f390" [label=""];
  "sha256:880e2df8c0011bfc8b572cd2916096f2fdc5f3fc70074911dfa160f366a9f390" -> "sha256:1b9f9d9bf5e8ec0a50a05df6583bc3331c78317cb7ce6a5930b0cbe13fcc298e" [label=""];
  "sha256:1b9f9d9bf5e8ec0a50a05df6583bc3331c78317cb7ce6a5930b0cbe13fcc298e" -> "sha256:3dff5e4404938e45e02da06cd971729a11d6b54d57f66da9a518abb93a160380" [label=""];
  "sha256:3dff5e4404938e45e02da06cd971729a11d6b54d57f66da9a518abb93a160380" -> "sha256:8e3162836886a9392935dd757f1aca153e48e55778ae68b5c6c25e9e0549b6ba" [label=""];
  "sha256:705620203c0acb1db4cdeb851954d309a5724f8d7f2cd11a22dbc24134eb1c36" -> "sha256:8e3162836886a9392935dd757f1aca153e48e55778ae68b5c6c25e9e0549b6ba" [label=""];
  "sha256:8e3162836886a9392935dd757f1aca153e48e55778ae68b5c6c25e9e0549b6ba" -> "sha256:b09108ece28b0099680de525f51e269ef6d93a6ce2e7c71e3cda5bb9abac9802" [label=""];
  "sha256:b09108ece28b0099680de525f51e269ef6d93a6ce2e7c71e3cda5bb9abac9802" -> "sha256:238bd91619cf257716e25a72f733454bf377b659d8ac02359df09015b713dd43" [label=""];
  "sha256:238bd91619cf257716e25a72f733454bf377b659d8ac02359df09015b713dd43" -> "sha256:0602d77a85ba47a4b88fe3607f280af46a0a3f4ab41b03528384c2311377ff39" [label=""];
}

