[app/sources/335031273.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:e3b24b9a4ebc880113dcab23eeda5370b6ad9b15e69127f765fb55a7677da533" [label="/bin/sh -c apt-get update && apt-get install -y         curl         git     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c09f3e478b03a0fb2c3344cbaa9133a35cf36d3fa42ad4e1e5ac9ab61a05a97f" [label="mkdir{path=/git}" shape="note"];
  "sha256:a24862e69df3ba5d889010142b00a14fcef577d4c0147b713aeaad8a827d0020" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:f774a2eb99654b476672e84f7015bc27fc3e8b47be5b59e4bab52157be707afb" [label="/bin/sh -c git clone --branch v4.15 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:5bb34eaddfc5fce076f56b5ae2b46b6e65b9f68e46c780006d579cefebc60aa6" [label="/bin/sh -c git clone --branch glibc-2.27 --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:18b4f2024bdba0e9ac28d9cbe59ce03cfe8f7a5871437f8beab9b39451b746a0" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:cff95655e12a30bf577f50cb3deab6330eb139937ba9edac73dc6157aff8041c" [label="/bin/sh -c apt-get update && apt-get install -y         bison gawk make python         gcc gcc-multilib         gettext texinfo     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b5e561b136f83464c0c770b2d372a8deccd2bb175340b572d5347149ca5d756a" [label="/bin/sh -c apt-get update && apt-get install -y         qemu         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d75ba8ef3ca09410eba1c7b8d9bc36a1e87eafbf628c9f3be0770ec4f3b59242" [label="mkdir{path=/build}" shape="note"];
  "sha256:d11a066c0c14324f8dda23aabc9e2b7a4b09bdf9b144e1c6ef5f0d4256d5bd81" [label="sha256:d11a066c0c14324f8dda23aabc9e2b7a4b09bdf9b144e1c6ef5f0d4256d5bd81" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:e3b24b9a4ebc880113dcab23eeda5370b6ad9b15e69127f765fb55a7677da533" [label=""];
  "sha256:e3b24b9a4ebc880113dcab23eeda5370b6ad9b15e69127f765fb55a7677da533" -> "sha256:c09f3e478b03a0fb2c3344cbaa9133a35cf36d3fa42ad4e1e5ac9ab61a05a97f" [label=""];
  "sha256:c09f3e478b03a0fb2c3344cbaa9133a35cf36d3fa42ad4e1e5ac9ab61a05a97f" -> "sha256:a24862e69df3ba5d889010142b00a14fcef577d4c0147b713aeaad8a827d0020" [label=""];
  "sha256:a24862e69df3ba5d889010142b00a14fcef577d4c0147b713aeaad8a827d0020" -> "sha256:f774a2eb99654b476672e84f7015bc27fc3e8b47be5b59e4bab52157be707afb" [label=""];
  "sha256:f774a2eb99654b476672e84f7015bc27fc3e8b47be5b59e4bab52157be707afb" -> "sha256:5bb34eaddfc5fce076f56b5ae2b46b6e65b9f68e46c780006d579cefebc60aa6" [label=""];
  "sha256:5bb34eaddfc5fce076f56b5ae2b46b6e65b9f68e46c780006d579cefebc60aa6" -> "sha256:18b4f2024bdba0e9ac28d9cbe59ce03cfe8f7a5871437f8beab9b39451b746a0" [label=""];
  "sha256:18b4f2024bdba0e9ac28d9cbe59ce03cfe8f7a5871437f8beab9b39451b746a0" -> "sha256:cff95655e12a30bf577f50cb3deab6330eb139937ba9edac73dc6157aff8041c" [label=""];
  "sha256:cff95655e12a30bf577f50cb3deab6330eb139937ba9edac73dc6157aff8041c" -> "sha256:b5e561b136f83464c0c770b2d372a8deccd2bb175340b572d5347149ca5d756a" [label=""];
  "sha256:b5e561b136f83464c0c770b2d372a8deccd2bb175340b572d5347149ca5d756a" -> "sha256:d75ba8ef3ca09410eba1c7b8d9bc36a1e87eafbf628c9f3be0770ec4f3b59242" [label=""];
  "sha256:d75ba8ef3ca09410eba1c7b8d9bc36a1e87eafbf628c9f3be0770ec4f3b59242" -> "sha256:d11a066c0c14324f8dda23aabc9e2b7a4b09bdf9b144e1c6ef5f0d4256d5bd81" [label=""];
}

