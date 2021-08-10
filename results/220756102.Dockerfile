[app/sources/220756102.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:3fb36e369e5973a39db604fc233432242be9f8dbed7b795100c1909d6dcb5e1d" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         ca-certificates         curl         git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:19992d2ffc2161fd3ce5cd59848ea6d6bc1e4e06f269cec124f86cee469c71ff" [label="mkdir{path=/git}" shape="note"];
  "sha256:2de0395096b622cc6091336396d60087cce2b104c37aba38afc9ea6bb752dc46" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:6925b4fdb3e0af80fc04f9ac77fa3146a866bd5c1e64ec3e49e748762fb1e839" [label="/bin/sh -c git clone --branch v4.18 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:1cb5cb17ed22c3e80f95e60b6692e747d3b135fc1ca1d4863b18b4885ccba829" [label="/bin/sh -c git clone --branch glibc-2.28 --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:b62e1be75fde0966c5d89d42ff750f3cf1190548773cfc2239ffd7469e65b7aa" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:572c604faaa2b8fcbfde267d49654c69c03e06dc1e89612a2f8409e49d16b754" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         bison gawk make python         gcc gcc-multilib         gettext texinfo         qemu     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:63e632dbc68f3a8d3222785ad37b9aafd02968cf10445e08f854ecf7bb3ccd15" [label="/bin/sh -c apt-get update && apt-get install -y         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7cdc6d4e1ae8a9f349111019a6079086f03e0522470301a7d643b51f33671a11" [label="mkdir{path=/build}" shape="note"];
  "sha256:ef2a579e42857f66bceac9962df27526a7232cd5243570cb4a01f54e0ecdd9f3" [label="sha256:ef2a579e42857f66bceac9962df27526a7232cd5243570cb4a01f54e0ecdd9f3" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:3fb36e369e5973a39db604fc233432242be9f8dbed7b795100c1909d6dcb5e1d" [label=""];
  "sha256:3fb36e369e5973a39db604fc233432242be9f8dbed7b795100c1909d6dcb5e1d" -> "sha256:19992d2ffc2161fd3ce5cd59848ea6d6bc1e4e06f269cec124f86cee469c71ff" [label=""];
  "sha256:19992d2ffc2161fd3ce5cd59848ea6d6bc1e4e06f269cec124f86cee469c71ff" -> "sha256:2de0395096b622cc6091336396d60087cce2b104c37aba38afc9ea6bb752dc46" [label=""];
  "sha256:2de0395096b622cc6091336396d60087cce2b104c37aba38afc9ea6bb752dc46" -> "sha256:6925b4fdb3e0af80fc04f9ac77fa3146a866bd5c1e64ec3e49e748762fb1e839" [label=""];
  "sha256:6925b4fdb3e0af80fc04f9ac77fa3146a866bd5c1e64ec3e49e748762fb1e839" -> "sha256:1cb5cb17ed22c3e80f95e60b6692e747d3b135fc1ca1d4863b18b4885ccba829" [label=""];
  "sha256:1cb5cb17ed22c3e80f95e60b6692e747d3b135fc1ca1d4863b18b4885ccba829" -> "sha256:b62e1be75fde0966c5d89d42ff750f3cf1190548773cfc2239ffd7469e65b7aa" [label=""];
  "sha256:b62e1be75fde0966c5d89d42ff750f3cf1190548773cfc2239ffd7469e65b7aa" -> "sha256:572c604faaa2b8fcbfde267d49654c69c03e06dc1e89612a2f8409e49d16b754" [label=""];
  "sha256:572c604faaa2b8fcbfde267d49654c69c03e06dc1e89612a2f8409e49d16b754" -> "sha256:63e632dbc68f3a8d3222785ad37b9aafd02968cf10445e08f854ecf7bb3ccd15" [label=""];
  "sha256:63e632dbc68f3a8d3222785ad37b9aafd02968cf10445e08f854ecf7bb3ccd15" -> "sha256:7cdc6d4e1ae8a9f349111019a6079086f03e0522470301a7d643b51f33671a11" [label=""];
  "sha256:7cdc6d4e1ae8a9f349111019a6079086f03e0522470301a7d643b51f33671a11" -> "sha256:ef2a579e42857f66bceac9962df27526a7232cd5243570cb4a01f54e0ecdd9f3" [label=""];
}

