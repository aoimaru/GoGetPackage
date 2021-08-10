[app/sources/308057598.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:5c08594cb37795b8bf33fa4b46226b99a9c2bb020da243ed34e6d31d2fa7b2e2" [label="/bin/sh -c sed -i s/httpredir.debian.org/$APT_MIRROR/g /etc/apt/sources.list" shape="box"];
  "sha256:de9bc01b068ed5277ea86b46fc4d80858fb8261dc95d4a88cb67af9d0c59bd88" [label="/bin/sh -c apt-get update && apt-get install -y \tbuild-essential \tca-certificates \tcurl \tgit \tmake \tjq \tpkg-config \tapparmor \tlibapparmor-dev \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9e87183482b2c2d23b4a3d00ef8d65eb5aa6bbbe4a38801c36bf1f816b6a0f2b" [label="/bin/sh -c curl -sSL  \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar -v -C /usr/local -xz" shape="box"];
  "sha256:5ac5e4b308459f21d5bb14ea81354922168d3b3a0eeac3728a2c3bdd4c7bd3a6" [label="/bin/sh -c git clone https://github.com/golang/tools.git /go/src/golang.org/x/tools \t&& (cd /go/src/golang.org/x/tools && git checkout -q $GO_TOOLS_COMMIT) \t&& go install -v golang.org/x/tools/cmd/cover \t&& go install -v golang.org/x/tools/cmd/vet" shape="box"];
  "sha256:352bf16dd3325d1031abbb52e3cd83cfbbe5b9edb28909aafd9069e7720c366a" [label="/bin/sh -c git clone https://github.com/golang/lint.git /go/src/github.com/golang/lint \t&& (cd /go/src/github.com/golang/lint && git checkout -q $GO_LINT_COMMIT) \t&& go install -v github.com/golang/lint/golint" shape="box"];
  "sha256:0a868cb9ff154cda14530e77c044ddebf3fe63f23b612ae329fcfb8239342205" [label="mkdir{path=/go/src/github.com/docker/containerd}" shape="note"];
  "sha256:c47c3f8d1a2da8b454e36077dac440abf7a88c8711bff08847b652a2ce073156" [label="/bin/sh -c set -x \t&& export SECCOMP_PATH=\"$(mktemp -d)\" \t&& curl -fsSL \"https://github.com/seccomp/libseccomp/releases/download/v${SECCOMP_VERSION}/libseccomp-${SECCOMP_VERSION}.tar.gz\" \t\t| tar -xzC \"$SECCOMP_PATH\" --strip-components=1 \t&& ( \t\tcd \"$SECCOMP_PATH\" \t\t&& ./configure --prefix=/usr/local \t\t&& make \t\t&& make install \t\t&& ldconfig \t) \t&& rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:d287f3e9d100fc8a85c0f32797d2b8109992920620807432e8f3b4f1770b962e" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\"     && git clone git://github.com/docker/runc.git \"$GOPATH/src/github.com/opencontainers/runc\" \t&& cd \"$GOPATH/src/github.com/opencontainers/runc\" \t&& git checkout -q \"$RUNC_COMMIT\" \t&& make BUILDTAGS=\"seccomp apparmor selinux\" && make install" shape="box"];
  "sha256:91f0929718c784aa51352f357bbaca871af01d94b479c4627dfefe8ac7a7436d" [label="local://context" shape="ellipse"];
  "sha256:f47ebe4c1c64d4fb966b79ea11069f090a8519c8bdfd51d9b9cd0766cfd9c86c" [label="copy{src=/, dest=/go/src/github.com/docker/containerd}" shape="note"];
  "sha256:846202a5112eb91cc0fdebd27c00dac1d8c98c6e2a716b03601cee2ca0df1c25" [label="mkdir{path=/go/src/github.com/docker/containerd}" shape="note"];
  "sha256:edc303819f11da483b92391c29871e2de9cd0f173ffcf4185e596b81e72e925a" [label="/bin/sh -c make all install" shape="box"];
  "sha256:f114389b120826beb6a8b02a78775172318cd312f11a898c64beb828d78df667" [label="sha256:f114389b120826beb6a8b02a78775172318cd312f11a898c64beb828d78df667" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:5c08594cb37795b8bf33fa4b46226b99a9c2bb020da243ed34e6d31d2fa7b2e2" [label=""];
  "sha256:5c08594cb37795b8bf33fa4b46226b99a9c2bb020da243ed34e6d31d2fa7b2e2" -> "sha256:de9bc01b068ed5277ea86b46fc4d80858fb8261dc95d4a88cb67af9d0c59bd88" [label=""];
  "sha256:de9bc01b068ed5277ea86b46fc4d80858fb8261dc95d4a88cb67af9d0c59bd88" -> "sha256:9e87183482b2c2d23b4a3d00ef8d65eb5aa6bbbe4a38801c36bf1f816b6a0f2b" [label=""];
  "sha256:9e87183482b2c2d23b4a3d00ef8d65eb5aa6bbbe4a38801c36bf1f816b6a0f2b" -> "sha256:5ac5e4b308459f21d5bb14ea81354922168d3b3a0eeac3728a2c3bdd4c7bd3a6" [label=""];
  "sha256:5ac5e4b308459f21d5bb14ea81354922168d3b3a0eeac3728a2c3bdd4c7bd3a6" -> "sha256:352bf16dd3325d1031abbb52e3cd83cfbbe5b9edb28909aafd9069e7720c366a" [label=""];
  "sha256:352bf16dd3325d1031abbb52e3cd83cfbbe5b9edb28909aafd9069e7720c366a" -> "sha256:0a868cb9ff154cda14530e77c044ddebf3fe63f23b612ae329fcfb8239342205" [label=""];
  "sha256:0a868cb9ff154cda14530e77c044ddebf3fe63f23b612ae329fcfb8239342205" -> "sha256:c47c3f8d1a2da8b454e36077dac440abf7a88c8711bff08847b652a2ce073156" [label=""];
  "sha256:c47c3f8d1a2da8b454e36077dac440abf7a88c8711bff08847b652a2ce073156" -> "sha256:d287f3e9d100fc8a85c0f32797d2b8109992920620807432e8f3b4f1770b962e" [label=""];
  "sha256:d287f3e9d100fc8a85c0f32797d2b8109992920620807432e8f3b4f1770b962e" -> "sha256:f47ebe4c1c64d4fb966b79ea11069f090a8519c8bdfd51d9b9cd0766cfd9c86c" [label=""];
  "sha256:91f0929718c784aa51352f357bbaca871af01d94b479c4627dfefe8ac7a7436d" -> "sha256:f47ebe4c1c64d4fb966b79ea11069f090a8519c8bdfd51d9b9cd0766cfd9c86c" [label=""];
  "sha256:f47ebe4c1c64d4fb966b79ea11069f090a8519c8bdfd51d9b9cd0766cfd9c86c" -> "sha256:846202a5112eb91cc0fdebd27c00dac1d8c98c6e2a716b03601cee2ca0df1c25" [label=""];
  "sha256:846202a5112eb91cc0fdebd27c00dac1d8c98c6e2a716b03601cee2ca0df1c25" -> "sha256:edc303819f11da483b92391c29871e2de9cd0f173ffcf4185e596b81e72e925a" [label=""];
  "sha256:edc303819f11da483b92391c29871e2de9cd0f173ffcf4185e596b81e72e925a" -> "sha256:f114389b120826beb6a8b02a78775172318cd312f11a898c64beb828d78df667" [label=""];
}

