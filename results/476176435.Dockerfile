[app/sources/476176435.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:beda719b8727bedd87ad5ddfbd4dadcea9c1a194b6e9328363e5597c2893f1eb" [label="/bin/sh -c ZULU_ARCH=zulu6.22.0.3-jdk6.0.119-linux_x64.tar.gz && \tINSTALL_DIR=/usr/lib/jvm && \tBIN_DIR=/usr/bin && \tMAN_DIR=/usr/share/man/man1 && \tZULU_DIR=$( basename ${ZULU_ARCH} .tar.gz ) && \tapk update && \tapk add --no-cache ca-certificates wget && \tupdate-ca-certificates && \twget -q http://cdn.azul.com/zulu/bin/${ZULU_ARCH} && \tmkdir -p ${INSTALL_DIR} && \ttar -xf ./${ZULU_ARCH} -C /usr/lib/jvm/ && rm -f ${ZULU_ARCH} && \tcd ${BIN_DIR}; find ${INSTALL_DIR}/${ZULU_DIR}/bin -type f -perm -a=x -exec ln -s {} . \\; && \tmkdir -p ${MAN_DIR} && \tcd ${MAN_DIR}; find ${INSTALL_DIR}/${ZULU_DIR}/man/man1 -type f -name \"*.1\" -exec ln -s {} . \\; && \tjava -version" shape="box"];
  "sha256:b840778e7377471e81bb32bcb472bb7ef0f907b158e05ed4a63ef006bae84d58" [label="sha256:b840778e7377471e81bb32bcb472bb7ef0f907b158e05ed4a63ef006bae84d58" shape="plaintext"];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:beda719b8727bedd87ad5ddfbd4dadcea9c1a194b6e9328363e5597c2893f1eb" [label=""];
  "sha256:beda719b8727bedd87ad5ddfbd4dadcea9c1a194b6e9328363e5597c2893f1eb" -> "sha256:b840778e7377471e81bb32bcb472bb7ef0f907b158e05ed4a63ef006bae84d58" [label=""];
}

