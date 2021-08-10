[app/sources/436179382.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         ca-certificates         curl         git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label="mkdir{path=/git}" shape="note"];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:9bd3e9f8a122afd8c34621d8e78623369e34de61820e034de7bcfeb0f7e456fa" [label="/bin/sh -c git clone --branch v5.1 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:07ef6cb1ce85d03ca1ca24dac8e9865fb075c64f8281457c53199ff2ce0d9a5a" [label="/bin/sh -c git clone --branch release/2.29/master --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:35303a54af77360c0f33c244c01956f89df00dee119baa813bfb912f9cba649c" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:90133905dc36a3d222e1d3cd2368dc10120ab5580e039829986487f4333d865c" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         bison gawk make python3         gcc gcc-multilib         gettext texinfo         qemu-user     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0f54c280774ed21567f626a40fd7ee27da45c590521c0860a9f3c2bd74c4536a" [label="/bin/sh -c apt-get update && apt-get install -y         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu \tgcc-riscv64-linux-gnu                                         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a83b26d3b52b19dfc493c9f0a97ab75352bdfd426fc7e7e152992abdc0f119c3" [label="mkdir{path=/build}" shape="note"];
  "sha256:31dbd44bbaa7f56aa0e1762b5168032c7715677618f3349978d591ef66dea52a" [label="sha256:31dbd44bbaa7f56aa0e1762b5168032c7715677618f3349978d591ef66dea52a" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label=""];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" -> "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label=""];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" -> "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label=""];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" -> "sha256:9bd3e9f8a122afd8c34621d8e78623369e34de61820e034de7bcfeb0f7e456fa" [label=""];
  "sha256:9bd3e9f8a122afd8c34621d8e78623369e34de61820e034de7bcfeb0f7e456fa" -> "sha256:07ef6cb1ce85d03ca1ca24dac8e9865fb075c64f8281457c53199ff2ce0d9a5a" [label=""];
  "sha256:07ef6cb1ce85d03ca1ca24dac8e9865fb075c64f8281457c53199ff2ce0d9a5a" -> "sha256:35303a54af77360c0f33c244c01956f89df00dee119baa813bfb912f9cba649c" [label=""];
  "sha256:35303a54af77360c0f33c244c01956f89df00dee119baa813bfb912f9cba649c" -> "sha256:90133905dc36a3d222e1d3cd2368dc10120ab5580e039829986487f4333d865c" [label=""];
  "sha256:90133905dc36a3d222e1d3cd2368dc10120ab5580e039829986487f4333d865c" -> "sha256:0f54c280774ed21567f626a40fd7ee27da45c590521c0860a9f3c2bd74c4536a" [label=""];
  "sha256:0f54c280774ed21567f626a40fd7ee27da45c590521c0860a9f3c2bd74c4536a" -> "sha256:a83b26d3b52b19dfc493c9f0a97ab75352bdfd426fc7e7e152992abdc0f119c3" [label=""];
  "sha256:a83b26d3b52b19dfc493c9f0a97ab75352bdfd426fc7e7e152992abdc0f119c3" -> "sha256:31dbd44bbaa7f56aa0e1762b5168032c7715677618f3349978d591ef66dea52a" [label=""];
}

