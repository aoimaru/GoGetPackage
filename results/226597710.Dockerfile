[app/sources/226597710.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:45849d62f9f9f993f5ade5bab3b0d5691c9413422b3b1f73cb65092ba3be4633" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tbtrfs-tools \t\tcurl \t\tgcc \t\tgit \t\tgolang \t\tlibdevmapper-dev \t\tlibsqlite3-dev \t\t\t\tca-certificates \t\te2fsprogs \t\tiptables \t\tprocps \t\txfsprogs \t\txz-utils \t\t\t\taufs-tools \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:354aa565037ae6621580be5d71367f0c1c8c135458104cf8f8dcc7f53ae8e4a9" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone git://github.com/opencontainers/runc.git \"$GOPATH/src/github.com/opencontainers/runc\" \t&& cd \"$GOPATH/src/github.com/opencontainers/runc\" \t&& git checkout -q \"$RUNC_COMMIT\" \t&& make static BUILDTAGS=\"seccomp apparmor selinux\" \t&& cp runc /usr/local/bin/docker-runc" shape="box"];
  "sha256:c6f1a3d55858226bbcd61b3fff6ee152617894b84530ed7b9c0bdb1108f3e036" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone git://github.com/docker/containerd.git \"$GOPATH/src/github.com/docker/containerd\" \t&& cd \"$GOPATH/src/github.com/docker/containerd\" \t&& git checkout -q \"$CONTAINERD_COMMIT\" \t&& make static \t&& cp bin/containerd /usr/local/bin/docker-containerd \t&& cp bin/containerd-shim /usr/local/bin/docker-containerd-shim \t&& cp bin/ctr /usr/local/bin/docker-containerd-ctr" shape="box"];
  "sha256:53d6bd89057a57d70234581f61e4ac8f7356f0be6aa80f08693d437454f2d58a" [label="mkdir{path=/usr/src/docker}" shape="note"];
  "sha256:a239600a74c2600787c5a145f8b1c580236bc5659fd6fa6a0b52fbb9ba4cb458" [label="local://context" shape="ellipse"];
  "sha256:2cdf1ffab25ac4f92309893d4e7a3f064859062cf1c3e41f928e22e3da6f8620" [label="copy{src=/, dest=/usr/src/docker}" shape="note"];
  "sha256:5cd1d9dfb41cf28c4bc6d57baa952dd43789b8cf7e092be89cd7138e9ea829df" [label="sha256:5cd1d9dfb41cf28c4bc6d57baa952dd43789b8cf7e092be89cd7138e9ea829df" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:45849d62f9f9f993f5ade5bab3b0d5691c9413422b3b1f73cb65092ba3be4633" [label=""];
  "sha256:45849d62f9f9f993f5ade5bab3b0d5691c9413422b3b1f73cb65092ba3be4633" -> "sha256:354aa565037ae6621580be5d71367f0c1c8c135458104cf8f8dcc7f53ae8e4a9" [label=""];
  "sha256:354aa565037ae6621580be5d71367f0c1c8c135458104cf8f8dcc7f53ae8e4a9" -> "sha256:c6f1a3d55858226bbcd61b3fff6ee152617894b84530ed7b9c0bdb1108f3e036" [label=""];
  "sha256:c6f1a3d55858226bbcd61b3fff6ee152617894b84530ed7b9c0bdb1108f3e036" -> "sha256:53d6bd89057a57d70234581f61e4ac8f7356f0be6aa80f08693d437454f2d58a" [label=""];
  "sha256:53d6bd89057a57d70234581f61e4ac8f7356f0be6aa80f08693d437454f2d58a" -> "sha256:2cdf1ffab25ac4f92309893d4e7a3f064859062cf1c3e41f928e22e3da6f8620" [label=""];
  "sha256:a239600a74c2600787c5a145f8b1c580236bc5659fd6fa6a0b52fbb9ba4cb458" -> "sha256:2cdf1ffab25ac4f92309893d4e7a3f064859062cf1c3e41f928e22e3da6f8620" [label=""];
  "sha256:2cdf1ffab25ac4f92309893d4e7a3f064859062cf1c3e41f928e22e3da6f8620" -> "sha256:5cd1d9dfb41cf28c4bc6d57baa952dd43789b8cf7e092be89cd7138e9ea829df" [label=""];
}

