[app/sources/199519743.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:1db51786efcba43a2c69f343144a1b9710548c89fd6469991a6bbfe36b69c2e4" [label="/bin/sh -c echo 'deb http://en.archive.ubuntu.com/ubuntu/ artful main universe' >> /etc/apt/sources.list" shape="box"];
  "sha256:b1af176689f4cd507817eaf9ec6597315b9100c3850919bba3ba8d60147cfd03" [label="/bin/sh -c apt-get update && apt-get install -y         curl         git     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8bf1f7d837180fa90852545f64fd06c5897e80010f37bfccb19934d1d61b61a0" [label="mkdir{path=/git}" shape="note"];
  "sha256:0e318e6af7b7fb34f0b205bc43092dbbb034e619b5dea36e5928bf763e1ed5f4" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:ec8ac4bb384726d3b122cb24c33ee3709b7732161a2a848f9ff44e3859a837cf" [label="/bin/sh -c git clone --branch v4.13 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:353ae2926e5aa218bd7a3cb2efc38c35d053e7a6b15403071ad00a31b646a3a6" [label="/bin/sh -c git clone --branch glibc-2.26 --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:c5de9bc21272b1bca8da1a335a70a3459e49bb75abe570fc04489870c21d98c5" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:4661bd9b9bacec01b6e092d61d3c759bf2ff0c992a738dc0136b674bf7b1d7ee" [label="/bin/sh -c apt-get update && apt-get install -y         gawk make python         gcc gcc-multilib         gettext texinfo     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:694ecdc009f327061cda5a7233d3efb07e43f9914e24df2fe3277cc2a6c44655" [label="/bin/sh -c apt-get update && apt-get install -y         qemu         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:548a37aff5033df482e8784c59381f70d73b4525b52954569a07628524690b48" [label="mkdir{path=/build}" shape="note"];
  "sha256:91e6edc7e0e372e8e24476e3ffe0192b5fb43550b22ad7ac99abe514aafe9c31" [label="sha256:91e6edc7e0e372e8e24476e3ffe0192b5fb43550b22ad7ac99abe514aafe9c31" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:1db51786efcba43a2c69f343144a1b9710548c89fd6469991a6bbfe36b69c2e4" [label=""];
  "sha256:1db51786efcba43a2c69f343144a1b9710548c89fd6469991a6bbfe36b69c2e4" -> "sha256:b1af176689f4cd507817eaf9ec6597315b9100c3850919bba3ba8d60147cfd03" [label=""];
  "sha256:b1af176689f4cd507817eaf9ec6597315b9100c3850919bba3ba8d60147cfd03" -> "sha256:8bf1f7d837180fa90852545f64fd06c5897e80010f37bfccb19934d1d61b61a0" [label=""];
  "sha256:8bf1f7d837180fa90852545f64fd06c5897e80010f37bfccb19934d1d61b61a0" -> "sha256:0e318e6af7b7fb34f0b205bc43092dbbb034e619b5dea36e5928bf763e1ed5f4" [label=""];
  "sha256:0e318e6af7b7fb34f0b205bc43092dbbb034e619b5dea36e5928bf763e1ed5f4" -> "sha256:ec8ac4bb384726d3b122cb24c33ee3709b7732161a2a848f9ff44e3859a837cf" [label=""];
  "sha256:ec8ac4bb384726d3b122cb24c33ee3709b7732161a2a848f9ff44e3859a837cf" -> "sha256:353ae2926e5aa218bd7a3cb2efc38c35d053e7a6b15403071ad00a31b646a3a6" [label=""];
  "sha256:353ae2926e5aa218bd7a3cb2efc38c35d053e7a6b15403071ad00a31b646a3a6" -> "sha256:c5de9bc21272b1bca8da1a335a70a3459e49bb75abe570fc04489870c21d98c5" [label=""];
  "sha256:c5de9bc21272b1bca8da1a335a70a3459e49bb75abe570fc04489870c21d98c5" -> "sha256:4661bd9b9bacec01b6e092d61d3c759bf2ff0c992a738dc0136b674bf7b1d7ee" [label=""];
  "sha256:4661bd9b9bacec01b6e092d61d3c759bf2ff0c992a738dc0136b674bf7b1d7ee" -> "sha256:694ecdc009f327061cda5a7233d3efb07e43f9914e24df2fe3277cc2a6c44655" [label=""];
  "sha256:694ecdc009f327061cda5a7233d3efb07e43f9914e24df2fe3277cc2a6c44655" -> "sha256:548a37aff5033df482e8784c59381f70d73b4525b52954569a07628524690b48" [label=""];
  "sha256:548a37aff5033df482e8784c59381f70d73b4525b52954569a07628524690b48" -> "sha256:91e6edc7e0e372e8e24476e3ffe0192b5fb43550b22ad7ac99abe514aafe9c31" [label=""];
}

