[app/sources/413080456.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:1db51786efcba43a2c69f343144a1b9710548c89fd6469991a6bbfe36b69c2e4" [label="/bin/sh -c echo 'deb http://en.archive.ubuntu.com/ubuntu/ artful main universe' >> /etc/apt/sources.list" shape="box"];
  "sha256:b1af176689f4cd507817eaf9ec6597315b9100c3850919bba3ba8d60147cfd03" [label="/bin/sh -c apt-get update && apt-get install -y         curl         git     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8bf1f7d837180fa90852545f64fd06c5897e80010f37bfccb19934d1d61b61a0" [label="mkdir{path=/git}" shape="note"];
  "sha256:0e318e6af7b7fb34f0b205bc43092dbbb034e619b5dea36e5928bf763e1ed5f4" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:ec8ac4bb384726d3b122cb24c33ee3709b7732161a2a848f9ff44e3859a837cf" [label="/bin/sh -c git clone --branch v4.13 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:353ae2926e5aa218bd7a3cb2efc38c35d053e7a6b15403071ad00a31b646a3a6" [label="/bin/sh -c git clone --branch glibc-2.26 --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:8fa55c6aba172c65be592f7024346fa21d6689ca0c4a7e7ccf696e574b43d428" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:beebc90e1ae27a56664144d2e17c140c0cdd506a077004c26e683647564fb360" [label="/bin/sh -c apt-get update && apt-get install -y         gawk make python         gcc gcc-multilib         gettext  texinfo     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8a0de554fe837d341534a6ff93ae1c7a373be03402d5e98b185b8ebc6ec9a0d2" [label="/bin/sh -c apt-get update && apt-get install -y         qemu         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a6e07b8dea935ec72ce2b82cb724ec7e59034fb0e9b7ec6f7ea8da463e5ea901" [label="mkdir{path=/build}" shape="note"];
  "sha256:ebe35a285efa27b2321726687dc480a96f96e11923dafbf090c254e81623dee1" [label="sha256:ebe35a285efa27b2321726687dc480a96f96e11923dafbf090c254e81623dee1" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:1db51786efcba43a2c69f343144a1b9710548c89fd6469991a6bbfe36b69c2e4" [label=""];
  "sha256:1db51786efcba43a2c69f343144a1b9710548c89fd6469991a6bbfe36b69c2e4" -> "sha256:b1af176689f4cd507817eaf9ec6597315b9100c3850919bba3ba8d60147cfd03" [label=""];
  "sha256:b1af176689f4cd507817eaf9ec6597315b9100c3850919bba3ba8d60147cfd03" -> "sha256:8bf1f7d837180fa90852545f64fd06c5897e80010f37bfccb19934d1d61b61a0" [label=""];
  "sha256:8bf1f7d837180fa90852545f64fd06c5897e80010f37bfccb19934d1d61b61a0" -> "sha256:0e318e6af7b7fb34f0b205bc43092dbbb034e619b5dea36e5928bf763e1ed5f4" [label=""];
  "sha256:0e318e6af7b7fb34f0b205bc43092dbbb034e619b5dea36e5928bf763e1ed5f4" -> "sha256:ec8ac4bb384726d3b122cb24c33ee3709b7732161a2a848f9ff44e3859a837cf" [label=""];
  "sha256:ec8ac4bb384726d3b122cb24c33ee3709b7732161a2a848f9ff44e3859a837cf" -> "sha256:353ae2926e5aa218bd7a3cb2efc38c35d053e7a6b15403071ad00a31b646a3a6" [label=""];
  "sha256:353ae2926e5aa218bd7a3cb2efc38c35d053e7a6b15403071ad00a31b646a3a6" -> "sha256:8fa55c6aba172c65be592f7024346fa21d6689ca0c4a7e7ccf696e574b43d428" [label=""];
  "sha256:8fa55c6aba172c65be592f7024346fa21d6689ca0c4a7e7ccf696e574b43d428" -> "sha256:beebc90e1ae27a56664144d2e17c140c0cdd506a077004c26e683647564fb360" [label=""];
  "sha256:beebc90e1ae27a56664144d2e17c140c0cdd506a077004c26e683647564fb360" -> "sha256:8a0de554fe837d341534a6ff93ae1c7a373be03402d5e98b185b8ebc6ec9a0d2" [label=""];
  "sha256:8a0de554fe837d341534a6ff93ae1c7a373be03402d5e98b185b8ebc6ec9a0d2" -> "sha256:a6e07b8dea935ec72ce2b82cb724ec7e59034fb0e9b7ec6f7ea8da463e5ea901" [label=""];
  "sha256:a6e07b8dea935ec72ce2b82cb724ec7e59034fb0e9b7ec6f7ea8da463e5ea901" -> "sha256:ebe35a285efa27b2321726687dc480a96f96e11923dafbf090c254e81623dee1" [label=""];
}

