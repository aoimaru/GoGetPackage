[app/sources/276879951.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:3fb36e369e5973a39db604fc233432242be9f8dbed7b795100c1909d6dcb5e1d" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         ca-certificates         curl         git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:19992d2ffc2161fd3ce5cd59848ea6d6bc1e4e06f269cec124f86cee469c71ff" [label="mkdir{path=/git}" shape="note"];
  "sha256:2de0395096b622cc6091336396d60087cce2b104c37aba38afc9ea6bb752dc46" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:ea601405246203567ef3536bcd1ff54a5c0101f6dcc9479b2825217397c0417f" [label="/bin/sh -c git clone --branch v4.17 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:90e45aa662c06c2ad0f7d8716c942d02f3d0b54385281f54046ed1934ecabf6b" [label="/bin/sh -c git clone --branch glibc-2.27 --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:12eafef896f3db9d60f2cf942e489c7b4d2e65c12fcc9fae4534bfc3401a4d0c" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:7a3b5edc7ba0833dde09631b56d237b18c367272a9acecec17bf8eb37a81ba77" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         bison gawk make python         gcc gcc-multilib         gettext texinfo         qemu     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f09765e54d210ce50a2febeec3c15daae7ef68442d0ed0d1ccf9ed7ad2bc8097" [label="/bin/sh -c apt-get update && apt-get install -y         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:53b59939db3f7f5edf7de9768ba59b5d813aaf3791333e06e1c47642b7831e11" [label="mkdir{path=/build}" shape="note"];
  "sha256:5e969ff8bbda443b60348fe72386f6d61e01ce351954d94aaee61ab686bd8860" [label="sha256:5e969ff8bbda443b60348fe72386f6d61e01ce351954d94aaee61ab686bd8860" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:3fb36e369e5973a39db604fc233432242be9f8dbed7b795100c1909d6dcb5e1d" [label=""];
  "sha256:3fb36e369e5973a39db604fc233432242be9f8dbed7b795100c1909d6dcb5e1d" -> "sha256:19992d2ffc2161fd3ce5cd59848ea6d6bc1e4e06f269cec124f86cee469c71ff" [label=""];
  "sha256:19992d2ffc2161fd3ce5cd59848ea6d6bc1e4e06f269cec124f86cee469c71ff" -> "sha256:2de0395096b622cc6091336396d60087cce2b104c37aba38afc9ea6bb752dc46" [label=""];
  "sha256:2de0395096b622cc6091336396d60087cce2b104c37aba38afc9ea6bb752dc46" -> "sha256:ea601405246203567ef3536bcd1ff54a5c0101f6dcc9479b2825217397c0417f" [label=""];
  "sha256:ea601405246203567ef3536bcd1ff54a5c0101f6dcc9479b2825217397c0417f" -> "sha256:90e45aa662c06c2ad0f7d8716c942d02f3d0b54385281f54046ed1934ecabf6b" [label=""];
  "sha256:90e45aa662c06c2ad0f7d8716c942d02f3d0b54385281f54046ed1934ecabf6b" -> "sha256:12eafef896f3db9d60f2cf942e489c7b4d2e65c12fcc9fae4534bfc3401a4d0c" [label=""];
  "sha256:12eafef896f3db9d60f2cf942e489c7b4d2e65c12fcc9fae4534bfc3401a4d0c" -> "sha256:7a3b5edc7ba0833dde09631b56d237b18c367272a9acecec17bf8eb37a81ba77" [label=""];
  "sha256:7a3b5edc7ba0833dde09631b56d237b18c367272a9acecec17bf8eb37a81ba77" -> "sha256:f09765e54d210ce50a2febeec3c15daae7ef68442d0ed0d1ccf9ed7ad2bc8097" [label=""];
  "sha256:f09765e54d210ce50a2febeec3c15daae7ef68442d0ed0d1ccf9ed7ad2bc8097" -> "sha256:53b59939db3f7f5edf7de9768ba59b5d813aaf3791333e06e1c47642b7831e11" [label=""];
  "sha256:53b59939db3f7f5edf7de9768ba59b5d813aaf3791333e06e1c47642b7831e11" -> "sha256:5e969ff8bbda443b60348fe72386f6d61e01ce351954d94aaee61ab686bd8860" [label=""];
}

