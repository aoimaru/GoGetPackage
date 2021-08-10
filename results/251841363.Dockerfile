[app/sources/251841363.Dockerfile]
digraph {
  "sha256:4420e691da742d0bb3928b985e4ac114fa54631b20c0b179017bcf95ac07502f" [label="local://context" shape="ellipse"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:c941316bfe0a8b519f8c2879225efaa9fddf3028d11635938dc779a73162f4b8" [label="docker-image://docker.io/smizy/hadoop-base:2.7.7-alpine" shape="ellipse"];
  "sha256:f70fa158b54b6ae64d1df8a793a487242e59297f22c5e8639050ce514fb87888" [label="copy{src=/usr/local/hadoop-2.7/lib/native, dest=/tmp/nativelib/Linux-amd64}" shape="note"];
  "sha256:f99ff075d22dcc1e2127c95a04a48fe4bc1f8743b0d30521bcd6c25956717973" [label="/bin/sh -c set -x     && apk update     && apk --no-cache add         bash         java-jansi-native         less         openjdk8-jre         python         su-exec         tar         wget         bzip2         fts         fuse         libressl-dev         libtirpc         snappy         zlib     && apk --no-cache add --virtual .builddeps         openjdk8         zip     && wget -q -O - https://repo1.maven.org/maven2/com/facebook/presto/presto-server/${PRESTO_VERSION}/presto-server-${PRESTO_VERSION}.tar.gz         | tar -xzf - -C /usr/local      && wget -q -O /usr/local/bin/presto https://repo1.maven.org/maven2/com/facebook/presto/presto-cli/${PRESTO_VERSION}/presto-cli-${PRESTO_VERSION}-executable.jar     && chmod +x /usr/local/bin/presto     && zip -d ${PRESTO_HOME}/plugin/hive-hadoop2/hadoop-apache2-*.jar nativelib/*     && cp -L /usr/lib/libsnappy.so.1 /tmp/nativelib/Linux-amd64/libsnappy.so     && jar -uvf ${PRESTO_HOME}/plugin/hive-hadoop2/hadoop-apache2-*.jar -C /tmp nativelib     && adduser -D  -g '' -s /sbin/nologin -u 1000 docker     && adduser -D  -g '' -s /sbin/nologin presto     && mkdir -p         ${PRESTO_CONF_DIR}         ${PRESTO_LOG_DIR}         ${PRESTO_NODE_DATA_DIR}     && chown -R presto:presto         ${PRESTO_HOME}         ${PRESTO_LOG_DIR}         ${PRESTO_NODE_DATA_DIR}     && rm -rf /tmp/nativelib     && apk del .builddeps" shape="box"];
  "sha256:c7bb1fa73023fec22dd9e568fe6b1260d9e11a3138901ede220a6d01a85fbc24" [label="copy{src=/etc, dest=/usr/local/presto-server-/etc/}" shape="note"];
  "sha256:84938d95a5302304d996096b44ca55ee54d590e086ac4f1a6fb1a87197189595" [label="copy{src=/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:3e3cd8e39705109e2073e2023740d6c466fa9f6c846acd53abd46e50a8832694" [label="copy{src=/lib/*, dest=/usr/local/lib/}" shape="note"];
  "sha256:d9f51914fc97852063fd15661187820c70e64b2fc81c06e52cd885fa665508c9" [label="mkdir{path=/usr/local/presto-server-}" shape="note"];
  "sha256:c9e624d019bcd1dc53bad3c45f97075257755865db35d6ba1571056e7531aef6" [label="sha256:c9e624d019bcd1dc53bad3c45f97075257755865db35d6ba1571056e7531aef6" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:f70fa158b54b6ae64d1df8a793a487242e59297f22c5e8639050ce514fb87888" [label=""];
  "sha256:c941316bfe0a8b519f8c2879225efaa9fddf3028d11635938dc779a73162f4b8" -> "sha256:f70fa158b54b6ae64d1df8a793a487242e59297f22c5e8639050ce514fb87888" [label=""];
  "sha256:f70fa158b54b6ae64d1df8a793a487242e59297f22c5e8639050ce514fb87888" -> "sha256:f99ff075d22dcc1e2127c95a04a48fe4bc1f8743b0d30521bcd6c25956717973" [label=""];
  "sha256:f99ff075d22dcc1e2127c95a04a48fe4bc1f8743b0d30521bcd6c25956717973" -> "sha256:c7bb1fa73023fec22dd9e568fe6b1260d9e11a3138901ede220a6d01a85fbc24" [label=""];
  "sha256:4420e691da742d0bb3928b985e4ac114fa54631b20c0b179017bcf95ac07502f" -> "sha256:c7bb1fa73023fec22dd9e568fe6b1260d9e11a3138901ede220a6d01a85fbc24" [label=""];
  "sha256:c7bb1fa73023fec22dd9e568fe6b1260d9e11a3138901ede220a6d01a85fbc24" -> "sha256:84938d95a5302304d996096b44ca55ee54d590e086ac4f1a6fb1a87197189595" [label=""];
  "sha256:4420e691da742d0bb3928b985e4ac114fa54631b20c0b179017bcf95ac07502f" -> "sha256:84938d95a5302304d996096b44ca55ee54d590e086ac4f1a6fb1a87197189595" [label=""];
  "sha256:84938d95a5302304d996096b44ca55ee54d590e086ac4f1a6fb1a87197189595" -> "sha256:3e3cd8e39705109e2073e2023740d6c466fa9f6c846acd53abd46e50a8832694" [label=""];
  "sha256:4420e691da742d0bb3928b985e4ac114fa54631b20c0b179017bcf95ac07502f" -> "sha256:3e3cd8e39705109e2073e2023740d6c466fa9f6c846acd53abd46e50a8832694" [label=""];
  "sha256:3e3cd8e39705109e2073e2023740d6c466fa9f6c846acd53abd46e50a8832694" -> "sha256:d9f51914fc97852063fd15661187820c70e64b2fc81c06e52cd885fa665508c9" [label=""];
  "sha256:d9f51914fc97852063fd15661187820c70e64b2fc81c06e52cd885fa665508c9" -> "sha256:c9e624d019bcd1dc53bad3c45f97075257755865db35d6ba1571056e7531aef6" [label=""];
}

