[app/sources/376638442.Dockerfile]
digraph {
  "sha256:299464ee0f5fc37f8ba254dabb0f6c8e7de885a1df5e1c94e9fb835257377ebd" [label="docker-image://docker.io/astj/centos5-vault:latest" shape="ellipse"];
  "sha256:22d9091f51ebc9bd344bfe2b5a636b7d5a6b3591c57f9a462805da448ebf730b" [label="/bin/sh -c yum install -y bzip2 make gcc gcc-c++ tar wget zlib-devel git &&     yum install -y epel-release &&     yum install -y cmake28 && cd /usr/bin && ln -s cmake28 cmake" shape="box"];
  "sha256:00e79f016a2d98cc156a87f5d2d4b3fa6259d8248ebe5a53950ed1eb6ac9410d" [label="/bin/sh -c GCCVER=5.2.0 && mkdir -p /download/gcc-${GCCVER} && cd /download/gcc-${GCCVER} && wget ftp://ftp.gnu.org/gnu/gcc/gcc-${GCCVER}/gcc-${GCCVER}.tar.bz2 &&     tar -xjf gcc-${GCCVER}.tar.bz2 && cd gcc-${GCCVER} && ./contrib/download_prerequisites &&     cd .. && mkdir -p build && cd build &&     ../gcc-${GCCVER}/configure         --prefix=/opt/gcc-${GCCVER}         --disable-multilib         --disable-bootstrap         --enable-lto         --with-system-zlib         --enable-languages=c,c++ &&     make -j2 && make install && cd / && rm -rf /download &&     GCC_PATH=/opt/gcc-${GCCVER} && SPECS_PATH=${GCC_PATH}/lib/gcc/x86_64-unknown-linux-gnu/${GCCVER} && SPECS_FILE=${SPECS_PATH}/specs &&     ${GCC_PATH}/bin/gcc -dumpspecs > ${SPECS_FILE} && echo '*link:'$'\\n'+ -R ${GCC_PATH}/lib64$'\\n'  >> ${SPECS_FILE}" shape="box"];
  "sha256:14fe20ea489699ab3ea52bb573e396e4900721fc7b8012e1276e41b4ced20c2d" [label="sha256:14fe20ea489699ab3ea52bb573e396e4900721fc7b8012e1276e41b4ced20c2d" shape="plaintext"];
  "sha256:299464ee0f5fc37f8ba254dabb0f6c8e7de885a1df5e1c94e9fb835257377ebd" -> "sha256:22d9091f51ebc9bd344bfe2b5a636b7d5a6b3591c57f9a462805da448ebf730b" [label=""];
  "sha256:22d9091f51ebc9bd344bfe2b5a636b7d5a6b3591c57f9a462805da448ebf730b" -> "sha256:00e79f016a2d98cc156a87f5d2d4b3fa6259d8248ebe5a53950ed1eb6ac9410d" [label=""];
  "sha256:00e79f016a2d98cc156a87f5d2d4b3fa6259d8248ebe5a53950ed1eb6ac9410d" -> "sha256:14fe20ea489699ab3ea52bb573e396e4900721fc7b8012e1276e41b4ced20c2d" [label=""];
}

