[app/sources/476805262.Dockerfile]
digraph {
  "sha256:6156b653a9ca1bf06eede928c74d8ef566f41653b521b5542cd851b80e067013" [label="docker-image://docker.io/jamiehewland/alpine-pypy:2.7-7.0.0-alpine3.9" shape="ellipse"];
  "sha256:8b5db5ad6c54f16de217385a79c1ed228128d25f575375f3cccd11705217d9ed" [label="/bin/sh -c apk add --no-cache --virtual .build-deps         bzip2-dev         expat-dev         gcc         gdbm-dev         libc-dev         libffi-dev         linux-headers         make         ncurses-dev         openssl-dev         pax-utils         readline-dev         sqlite-dev         tar         tk         tk-dev         xz-dev         zlib-dev" shape="box"];
  "sha256:b5f30ecd2d8f3fe10d840e44a45fc6dfe219bec2fbb89830d580665a3eed372d" [label="/bin/sh -c set -ex;     wget -O pypy.tar.bz2 \"https://bitbucket.org/pypy/pypy/downloads/pypy3.5-v${PYPY_VERSION}-src.tar.bz2\";     echo \"$PYPY_SHA256SUM *pypy.tar.bz2\" | sha256sum -c -;     mkdir -p /usr/src/pypy;     tar -xjC /usr/src/pypy --strip-components=1 -f pypy.tar.bz2;     rm pypy.tar.bz2" shape="box"];
  "sha256:35342ce8e457abdcfe1fe182b3c84c1505982fd3d821e68cc146ab822f16d29b" [label="mkdir{path=/usr/src/pypy}" shape="note"];
  "sha256:83243a6f85dfa6521345211b444b2aa35ad42ed435adb30cca9204726fdbc431" [label="local://context" shape="ellipse"];
  "sha256:a40374a0e50df657b0388236ded8956e3bff3d2984e17aa215fb21907c170243" [label="copy{src=/patches, dest=/patches}" shape="note"];
  "sha256:a59c207d907178fe05d0778957b3030bd7d4553b001b207820632a2931dd97eb" [label="/bin/sh -c set -ex;     for patch in /patches/*.patch; do         patch -p1 -E -i \"$patch\";     done" shape="box"];
  "sha256:c936c67fb1f3fc479715be57d1da1428aac68b1a4587571e924a6138e958f3a3" [label="copy{src=/build.sh, dest=/build.sh}" shape="note"];
  "sha256:c23b52f78c4ceebba854ac4de4f46ae0ea00a13318e041e7ce5b17423afc9787" [label="sha256:c23b52f78c4ceebba854ac4de4f46ae0ea00a13318e041e7ce5b17423afc9787" shape="plaintext"];
  "sha256:6156b653a9ca1bf06eede928c74d8ef566f41653b521b5542cd851b80e067013" -> "sha256:8b5db5ad6c54f16de217385a79c1ed228128d25f575375f3cccd11705217d9ed" [label=""];
  "sha256:8b5db5ad6c54f16de217385a79c1ed228128d25f575375f3cccd11705217d9ed" -> "sha256:b5f30ecd2d8f3fe10d840e44a45fc6dfe219bec2fbb89830d580665a3eed372d" [label=""];
  "sha256:b5f30ecd2d8f3fe10d840e44a45fc6dfe219bec2fbb89830d580665a3eed372d" -> "sha256:35342ce8e457abdcfe1fe182b3c84c1505982fd3d821e68cc146ab822f16d29b" [label=""];
  "sha256:35342ce8e457abdcfe1fe182b3c84c1505982fd3d821e68cc146ab822f16d29b" -> "sha256:a40374a0e50df657b0388236ded8956e3bff3d2984e17aa215fb21907c170243" [label=""];
  "sha256:83243a6f85dfa6521345211b444b2aa35ad42ed435adb30cca9204726fdbc431" -> "sha256:a40374a0e50df657b0388236ded8956e3bff3d2984e17aa215fb21907c170243" [label=""];
  "sha256:a40374a0e50df657b0388236ded8956e3bff3d2984e17aa215fb21907c170243" -> "sha256:a59c207d907178fe05d0778957b3030bd7d4553b001b207820632a2931dd97eb" [label=""];
  "sha256:a59c207d907178fe05d0778957b3030bd7d4553b001b207820632a2931dd97eb" -> "sha256:c936c67fb1f3fc479715be57d1da1428aac68b1a4587571e924a6138e958f3a3" [label=""];
  "sha256:83243a6f85dfa6521345211b444b2aa35ad42ed435adb30cca9204726fdbc431" -> "sha256:c936c67fb1f3fc479715be57d1da1428aac68b1a4587571e924a6138e958f3a3" [label=""];
  "sha256:c936c67fb1f3fc479715be57d1da1428aac68b1a4587571e924a6138e958f3a3" -> "sha256:c23b52f78c4ceebba854ac4de4f46ae0ea00a13318e041e7ce5b17423afc9787" [label=""];
}

