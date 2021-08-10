[app/sources/476176429.Dockerfile]
digraph {
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" [label="docker-image://docker.io/library/alpine@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:502e69f3b33a98a72ba2bc14296f44dbc5a7e841bc928f3147dfd3610a5e0835" [label="/bin/sh -c ZULU_ARCH=zulu11.29.11-ca-jdk11.0.2-linux_musl_x64.tar.gz &&     INSTALL_DIR=$( dirname $JAVA_HOME ) &&     BIN_DIR=/usr/bin &&     MAN_DIR=/usr/share/man/man1 &&     ZULU_DIR=$( basename ${ZULU_ARCH} .tar.gz ) &&     wget -q https://cdn.azul.com/zulu/bin/${ZULU_ARCH} &&     mkdir -p ${INSTALL_DIR} &&     tar -xf ./${ZULU_ARCH} -C ${INSTALL_DIR} && rm -f ${ZULU_ARCH} &&     mv ${INSTALL_DIR}/${ZULU_DIR} ${JAVA_HOME} &&     cd ${BIN_DIR} && find ${JAVA_HOME}/bin -type f -perm -a=x -exec ln -s {} . \\; &&     mkdir -p ${MAN_DIR} &&     cd ${MAN_DIR} && find ${JAVA_HOME}/man/man1 -type f -name \"*.1\" -exec ln -s {} . \\;" shape="box"];
  "sha256:cf60e683592d4c1030d018b37edcb6561d38f80a5cf80dbf5aec1c979360170e" [label="sha256:cf60e683592d4c1030d018b37edcb6561d38f80a5cf80dbf5aec1c979360170e" shape="plaintext"];
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" -> "sha256:502e69f3b33a98a72ba2bc14296f44dbc5a7e841bc928f3147dfd3610a5e0835" [label=""];
  "sha256:502e69f3b33a98a72ba2bc14296f44dbc5a7e841bc928f3147dfd3610a5e0835" -> "sha256:cf60e683592d4c1030d018b37edcb6561d38f80a5cf80dbf5aec1c979360170e" [label=""];
}

