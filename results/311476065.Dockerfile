[app/sources/311476065.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         ca-certificates         curl         git     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label="mkdir{path=/git}" shape="note"];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:2ef2a08f69216e8d9beb95085112c5264d7df7d2f76bc6578711cd027b3a51ee" [label="/bin/sh -c git clone --branch v4.20 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:9c749dc2bf3b2ff8035e3f5711cc90c750cca18a03b7cf60aefd75538aedc3db" [label="/bin/sh -c git clone --branch release/2.28/master --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:18fdcc68f37c8c2c0fcdeb70ac3cffc3697d6cc3599b7c7be39da70e4aac39a5" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:864f08d9e2578f1b08027166f71ebd051e03708c1d3d602b842f4de788f9c24e" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         bison gawk make python         gcc gcc-multilib         gettext texinfo         qemu-user     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b75d99d1ba9681a7bc80cbab2bd32f9eb0c1a00e9d3d6fff95b095db275399b2" [label="/bin/sh -c apt-get update && apt-get install -y         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu \tgcc-riscv64-linux-gnu                                         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:04f2f0ed5450a065d2c99b4d7dabbf1a2dd9029ddc1e0b14198b9d8bda528a06" [label="mkdir{path=/build}" shape="note"];
  "sha256:46394103b2921d1556d41bd0a136a3109f83f38e5aa24cbd448d7e254f92c536" [label="sha256:46394103b2921d1556d41bd0a136a3109f83f38e5aa24cbd448d7e254f92c536" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" [label=""];
  "sha256:a43ca70553036626fccb84bcb362046f0340fea56ce4a309b20b150d67febb32" -> "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" [label=""];
  "sha256:ccb51421f466872d6091254ba42ea664d2b8f85d5fed6e18f22314cdf86301c8" -> "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" [label=""];
  "sha256:d17c09b50927488fb5961fd83c5555a57a09df4ae2432e38654e532850c5f9b1" -> "sha256:2ef2a08f69216e8d9beb95085112c5264d7df7d2f76bc6578711cd027b3a51ee" [label=""];
  "sha256:2ef2a08f69216e8d9beb95085112c5264d7df7d2f76bc6578711cd027b3a51ee" -> "sha256:9c749dc2bf3b2ff8035e3f5711cc90c750cca18a03b7cf60aefd75538aedc3db" [label=""];
  "sha256:9c749dc2bf3b2ff8035e3f5711cc90c750cca18a03b7cf60aefd75538aedc3db" -> "sha256:18fdcc68f37c8c2c0fcdeb70ac3cffc3697d6cc3599b7c7be39da70e4aac39a5" [label=""];
  "sha256:18fdcc68f37c8c2c0fcdeb70ac3cffc3697d6cc3599b7c7be39da70e4aac39a5" -> "sha256:864f08d9e2578f1b08027166f71ebd051e03708c1d3d602b842f4de788f9c24e" [label=""];
  "sha256:864f08d9e2578f1b08027166f71ebd051e03708c1d3d602b842f4de788f9c24e" -> "sha256:b75d99d1ba9681a7bc80cbab2bd32f9eb0c1a00e9d3d6fff95b095db275399b2" [label=""];
  "sha256:b75d99d1ba9681a7bc80cbab2bd32f9eb0c1a00e9d3d6fff95b095db275399b2" -> "sha256:04f2f0ed5450a065d2c99b4d7dabbf1a2dd9029ddc1e0b14198b9d8bda528a06" [label=""];
  "sha256:04f2f0ed5450a065d2c99b4d7dabbf1a2dd9029ddc1e0b14198b9d8bda528a06" -> "sha256:46394103b2921d1556d41bd0a136a3109f83f38e5aa24cbd448d7e254f92c536" [label=""];
}

