[app/sources/476176457.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:73bc687aee9c82c51d5db703077e032cd9fbd1496a2027c473900fc09a2fab74" [label="/bin/sh -c ZULU_ARCH=zulu8.21.0.1-jdk8.0.131-linux_x64.tar.gz && \tINSTALL_DIR=/usr/lib/jvm && \tBIN_DIR=/usr/bin && \tMAN_DIR=/usr/share/man/man1 && \tZULU_DIR=$( basename ${ZULU_ARCH} .tar.gz ) && \tapk update && \tapk add --no-cache ca-certificates wget && \tupdate-ca-certificates && \twget -q http://cdn.azul.com/zulu/bin/${ZULU_ARCH} && \tmkdir -p ${INSTALL_DIR} && \ttar -xf ./${ZULU_ARCH} -C /usr/lib/jvm/ && rm -f ${ZULU_ARCH} && \tcd ${BIN_DIR}; find ${INSTALL_DIR}/${ZULU_DIR}/bin -type f -perm -a=x -exec ln -s {} . \\; && \tmkdir -p ${MAN_DIR} && \tcd ${MAN_DIR}; find ${INSTALL_DIR}/${ZULU_DIR}/man/man1 -type f -name \"*.1\" -exec ln -s {} . \\; && \tjava -version" shape="box"];
  "sha256:03f77087b9ed514f5a9601df591722af36f80a2ed92a11a162e4b56f32e6bfce" [label="sha256:03f77087b9ed514f5a9601df591722af36f80a2ed92a11a162e4b56f32e6bfce" shape="plaintext"];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:73bc687aee9c82c51d5db703077e032cd9fbd1496a2027c473900fc09a2fab74" [label=""];
  "sha256:73bc687aee9c82c51d5db703077e032cd9fbd1496a2027c473900fc09a2fab74" -> "sha256:03f77087b9ed514f5a9601df591722af36f80a2ed92a11a162e4b56f32e6bfce" [label=""];
}

