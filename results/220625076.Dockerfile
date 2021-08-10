[app/sources/220625076.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label="/bin/sh -c addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j" shape="box"];
  "sha256:8d3ae7aad880ac7c41572872f0ebb6da1af3c82528c9df5ad5d4038beb25bd1c" [label="local://context" shape="ellipse"];
  "sha256:a4d88a8ed255f3ada66a43b99ac2edfd5efc5f24b8181d09f6061e70a8069bd4" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:7232004237e2f9c15c17488cf7e22e395f9763453bd7c323662c9a23502fff69" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* \"${NEO4J_HOME}\"     && rm ${NEO4J_TARBALL}     && mv \"${NEO4J_HOME}\"/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && mv \"${NEO4J_HOME}\"/logs /logs     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j \"${NEO4J_HOME}\"     && chmod -R 777 \"${NEO4J_HOME}\"     && ln -s /data \"${NEO4J_HOME}\"/data     && ln -s /logs \"${NEO4J_HOME}\"/logs     && apk del curl" shape="box"];
  "sha256:a7f7584f858fff48ce7b8398a7e4a541c99496eae8dfc349f6f10a56df106da0" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:be8fe6766be75cd9e1b04867da89490f9dd8d6e9018f6cea8b5e405ba27b8397" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:d929f17972a1a366223e2e3f101ecd0658f780fc569b07ddfcd1af0af7551a71" [label="sha256:d929f17972a1a366223e2e3f101ecd0658f780fc569b07ddfcd1af0af7551a71" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label=""];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" -> "sha256:a4d88a8ed255f3ada66a43b99ac2edfd5efc5f24b8181d09f6061e70a8069bd4" [label=""];
  "sha256:8d3ae7aad880ac7c41572872f0ebb6da1af3c82528c9df5ad5d4038beb25bd1c" -> "sha256:a4d88a8ed255f3ada66a43b99ac2edfd5efc5f24b8181d09f6061e70a8069bd4" [label=""];
  "sha256:a4d88a8ed255f3ada66a43b99ac2edfd5efc5f24b8181d09f6061e70a8069bd4" -> "sha256:7232004237e2f9c15c17488cf7e22e395f9763453bd7c323662c9a23502fff69" [label=""];
  "sha256:7232004237e2f9c15c17488cf7e22e395f9763453bd7c323662c9a23502fff69" -> "sha256:a7f7584f858fff48ce7b8398a7e4a541c99496eae8dfc349f6f10a56df106da0" [label=""];
  "sha256:a7f7584f858fff48ce7b8398a7e4a541c99496eae8dfc349f6f10a56df106da0" -> "sha256:be8fe6766be75cd9e1b04867da89490f9dd8d6e9018f6cea8b5e405ba27b8397" [label=""];
  "sha256:8d3ae7aad880ac7c41572872f0ebb6da1af3c82528c9df5ad5d4038beb25bd1c" -> "sha256:be8fe6766be75cd9e1b04867da89490f9dd8d6e9018f6cea8b5e405ba27b8397" [label=""];
  "sha256:be8fe6766be75cd9e1b04867da89490f9dd8d6e9018f6cea8b5e405ba27b8397" -> "sha256:d929f17972a1a366223e2e3f101ecd0658f780fc569b07ddfcd1af0af7551a71" [label=""];
}

