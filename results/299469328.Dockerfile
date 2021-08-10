[app/sources/299469328.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         ca-certificates         curl         git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label="mkdir{path=/git}" shape="note"];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:e576fbaa3ad0bceaa40e2ab1be7f16ed3f5c5209497c1dee66a3fe301b139f80" [label="/bin/sh -c git clone --branch v5.0 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:376a103f42dd20aff8fd22d690628548e1aa149fd3932927ffaae201179cb4bb" [label="/bin/sh -c git clone --branch release/2.29/master --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:4581139f00956840432b1e24055a6d9e52419e4d4723fbb41642dfec7b970c16" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:95a8991134d0f9a5bd346142464ed0f209d86c21ab23eb3e8b14453059516411" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         bison gawk make python3         gcc gcc-multilib         gettext texinfo         qemu-user     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:834f52b35f326a2907ff9e89b0381889f76ec014c5705b55072ee97df5ea7368" [label="/bin/sh -c apt-get update && apt-get install -y         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu \tgcc-riscv64-linux-gnu                                         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b2837f33cd1dc72d8c47a618d50e9cbc828875554ce3f283347f019470d6e7fb" [label="mkdir{path=/build}" shape="note"];
  "sha256:2287d50c343b6cae5efbf020361d50ac567e5bbbb9f122f93cfa486fb1ce8068" [label="sha256:2287d50c343b6cae5efbf020361d50ac567e5bbbb9f122f93cfa486fb1ce8068" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label=""];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" -> "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label=""];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" -> "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label=""];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" -> "sha256:e576fbaa3ad0bceaa40e2ab1be7f16ed3f5c5209497c1dee66a3fe301b139f80" [label=""];
  "sha256:e576fbaa3ad0bceaa40e2ab1be7f16ed3f5c5209497c1dee66a3fe301b139f80" -> "sha256:376a103f42dd20aff8fd22d690628548e1aa149fd3932927ffaae201179cb4bb" [label=""];
  "sha256:376a103f42dd20aff8fd22d690628548e1aa149fd3932927ffaae201179cb4bb" -> "sha256:4581139f00956840432b1e24055a6d9e52419e4d4723fbb41642dfec7b970c16" [label=""];
  "sha256:4581139f00956840432b1e24055a6d9e52419e4d4723fbb41642dfec7b970c16" -> "sha256:95a8991134d0f9a5bd346142464ed0f209d86c21ab23eb3e8b14453059516411" [label=""];
  "sha256:95a8991134d0f9a5bd346142464ed0f209d86c21ab23eb3e8b14453059516411" -> "sha256:834f52b35f326a2907ff9e89b0381889f76ec014c5705b55072ee97df5ea7368" [label=""];
  "sha256:834f52b35f326a2907ff9e89b0381889f76ec014c5705b55072ee97df5ea7368" -> "sha256:b2837f33cd1dc72d8c47a618d50e9cbc828875554ce3f283347f019470d6e7fb" [label=""];
  "sha256:b2837f33cd1dc72d8c47a618d50e9cbc828875554ce3f283347f019470d6e7fb" -> "sha256:2287d50c343b6cae5efbf020361d50ac567e5bbbb9f122f93cfa486fb1ce8068" [label=""];
}

