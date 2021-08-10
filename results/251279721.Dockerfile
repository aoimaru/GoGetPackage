[app/sources/251279721.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         ca-certificates         curl         git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label="mkdir{path=/git}" shape="note"];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:2ef2a08f69216e8d9beb95085112c5264d7df7d2f76bc6578711cd027b3a51ee" [label="/bin/sh -c git clone --branch v4.20 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:2c481e253708d1b78601528df0957d59b965548d3713e7c47a8ac89af9783008" [label="/bin/sh -c git clone --branch release/2.29/master --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:db10b64e553bd934634aaf44beec8dff7cacaf81e2be85a007a8f48c068dc2ff" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:a38b392bce3969296e7665838016b576db632d77e31e1081222015fd8b162224" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         bison gawk make python3         gcc gcc-multilib         gettext texinfo         qemu-user     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b8d1ebcc81742ff960368d68db9ade5de3681bea08c2a6afb6a6fae84950fb11" [label="/bin/sh -c apt-get update && apt-get install -y         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu \tgcc-riscv64-linux-gnu                                         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:65e0abd946a54a6f852379c21548165ee2cfed07aedcb9d4562e4a46d07099c6" [label="mkdir{path=/build}" shape="note"];
  "sha256:e15947915a5d0175aa855c70f7b452ac428c548071c9cefec01adfc2f0e08509" [label="sha256:e15947915a5d0175aa855c70f7b452ac428c548071c9cefec01adfc2f0e08509" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label=""];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" -> "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label=""];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" -> "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label=""];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" -> "sha256:2ef2a08f69216e8d9beb95085112c5264d7df7d2f76bc6578711cd027b3a51ee" [label=""];
  "sha256:2ef2a08f69216e8d9beb95085112c5264d7df7d2f76bc6578711cd027b3a51ee" -> "sha256:2c481e253708d1b78601528df0957d59b965548d3713e7c47a8ac89af9783008" [label=""];
  "sha256:2c481e253708d1b78601528df0957d59b965548d3713e7c47a8ac89af9783008" -> "sha256:db10b64e553bd934634aaf44beec8dff7cacaf81e2be85a007a8f48c068dc2ff" [label=""];
  "sha256:db10b64e553bd934634aaf44beec8dff7cacaf81e2be85a007a8f48c068dc2ff" -> "sha256:a38b392bce3969296e7665838016b576db632d77e31e1081222015fd8b162224" [label=""];
  "sha256:a38b392bce3969296e7665838016b576db632d77e31e1081222015fd8b162224" -> "sha256:b8d1ebcc81742ff960368d68db9ade5de3681bea08c2a6afb6a6fae84950fb11" [label=""];
  "sha256:b8d1ebcc81742ff960368d68db9ade5de3681bea08c2a6afb6a6fae84950fb11" -> "sha256:65e0abd946a54a6f852379c21548165ee2cfed07aedcb9d4562e4a46d07099c6" [label=""];
  "sha256:65e0abd946a54a6f852379c21548165ee2cfed07aedcb9d4562e4a46d07099c6" -> "sha256:e15947915a5d0175aa855c70f7b452ac428c548071c9cefec01adfc2f0e08509" [label=""];
}

