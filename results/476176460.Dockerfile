[app/sources/476176460.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:316fb4c2632e038214a048e4ab385ecc53be687904f04655e5379f4123610499" [label="/bin/sh -c ZULU_ARCH=zulu8.27.0.7-jdk8.0.162-linux_x64.tar.gz && \tINSTALL_DIR=/usr/lib/jvm && \tBIN_DIR=/usr/bin && \tMAN_DIR=/usr/share/man/man1 && \tZULU_DIR=$( basename ${ZULU_ARCH} .tar.gz ) && \tapk update && \tapk add --no-cache ca-certificates wget && \tupdate-ca-certificates && \twget -q http://cdn.azul.com/zulu/bin/${ZULU_ARCH} && \tmkdir -p ${INSTALL_DIR} && \ttar -xf ./${ZULU_ARCH} -C /usr/lib/jvm/ && rm -f ${ZULU_ARCH} && \tcd ${BIN_DIR}; find ${INSTALL_DIR}/${ZULU_DIR}/bin -type f -perm -a=x -exec ln -s {} . \\; && \tmkdir -p ${MAN_DIR} && \tcd ${MAN_DIR}; find ${INSTALL_DIR}/${ZULU_DIR}/man/man1 -type f -name \"*.1\" -exec ln -s {} . \\; && \tjava -version" shape="box"];
  "sha256:590e0a92772524f602a88a204efbd151fbfd0e6e555a5cb23505cf4b803ef2a2" [label="sha256:590e0a92772524f602a88a204efbd151fbfd0e6e555a5cb23505cf4b803ef2a2" shape="plaintext"];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:316fb4c2632e038214a048e4ab385ecc53be687904f04655e5379f4123610499" [label=""];
  "sha256:316fb4c2632e038214a048e4ab385ecc53be687904f04655e5379f4123610499" -> "sha256:590e0a92772524f602a88a204efbd151fbfd0e6e555a5cb23505cf4b803ef2a2" [label=""];
}

