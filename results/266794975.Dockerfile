[app/sources/266794975.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:0da0979f5f6fddf55620a8ec00ab47601c3f645b07f993045dca1881f7c39bb2" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         ca-certificates         curl         git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5fae85dc643a3f8b8cf6fe3edcd2fa36940b7c8b0abf977fe6ab7656b97544d3" [label="mkdir{path=/git}" shape="note"];
  "sha256:82215fb6436015a3df0bbc647667ec07d0cae26c182a47b0e18c40d0c92b04bb" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:3dabacca20d1655c3074b3b4a0793e4248b812e8576880f916be00be8a8a3c7c" [label="/bin/sh -c git clone --branch v4.16 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:9e1244a73e59a4ca6f925f0b3806fb8db30198bfe922951b79db531ab557a1e8" [label="/bin/sh -c git clone --branch glibc-2.27 --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:a55cd4f8dd71f0cfd9ddfe86bc668dfe208d72cc10d5c6925d046b1ef219ee77" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:2115ddcdae50a0d432df144510e798b6c6d6a1192c0e8e77f97dbdbd7ca1a7cd" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         bison gawk make python         gcc gcc-multilib         gettext texinfo         qemu     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9c40535f8ddd8067923b0eb01cac816af52b2ea040693cbc4238ca3fb5e6af07" [label="/bin/sh -c apt-get update && apt-get install -y         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d30bd9d7866e6969abf956d6abc55d88fad5b5feddd234ae8765488c63b73bac" [label="mkdir{path=/build}" shape="note"];
  "sha256:b7d3545be5829a79a7f2b464560812f7e3bb412b6bd0dd057fa0a82d09df6d23" [label="sha256:b7d3545be5829a79a7f2b464560812f7e3bb412b6bd0dd057fa0a82d09df6d23" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:0da0979f5f6fddf55620a8ec00ab47601c3f645b07f993045dca1881f7c39bb2" [label=""];
  "sha256:0da0979f5f6fddf55620a8ec00ab47601c3f645b07f993045dca1881f7c39bb2" -> "sha256:5fae85dc643a3f8b8cf6fe3edcd2fa36940b7c8b0abf977fe6ab7656b97544d3" [label=""];
  "sha256:5fae85dc643a3f8b8cf6fe3edcd2fa36940b7c8b0abf977fe6ab7656b97544d3" -> "sha256:82215fb6436015a3df0bbc647667ec07d0cae26c182a47b0e18c40d0c92b04bb" [label=""];
  "sha256:82215fb6436015a3df0bbc647667ec07d0cae26c182a47b0e18c40d0c92b04bb" -> "sha256:3dabacca20d1655c3074b3b4a0793e4248b812e8576880f916be00be8a8a3c7c" [label=""];
  "sha256:3dabacca20d1655c3074b3b4a0793e4248b812e8576880f916be00be8a8a3c7c" -> "sha256:9e1244a73e59a4ca6f925f0b3806fb8db30198bfe922951b79db531ab557a1e8" [label=""];
  "sha256:9e1244a73e59a4ca6f925f0b3806fb8db30198bfe922951b79db531ab557a1e8" -> "sha256:a55cd4f8dd71f0cfd9ddfe86bc668dfe208d72cc10d5c6925d046b1ef219ee77" [label=""];
  "sha256:a55cd4f8dd71f0cfd9ddfe86bc668dfe208d72cc10d5c6925d046b1ef219ee77" -> "sha256:2115ddcdae50a0d432df144510e798b6c6d6a1192c0e8e77f97dbdbd7ca1a7cd" [label=""];
  "sha256:2115ddcdae50a0d432df144510e798b6c6d6a1192c0e8e77f97dbdbd7ca1a7cd" -> "sha256:9c40535f8ddd8067923b0eb01cac816af52b2ea040693cbc4238ca3fb5e6af07" [label=""];
  "sha256:9c40535f8ddd8067923b0eb01cac816af52b2ea040693cbc4238ca3fb5e6af07" -> "sha256:d30bd9d7866e6969abf956d6abc55d88fad5b5feddd234ae8765488c63b73bac" [label=""];
  "sha256:d30bd9d7866e6969abf956d6abc55d88fad5b5feddd234ae8765488c63b73bac" -> "sha256:b7d3545be5829a79a7f2b464560812f7e3bb412b6bd0dd057fa0a82d09df6d23" [label=""];
}

