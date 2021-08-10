[app/sources/220624892.Dockerfile]
digraph {
  "sha256:abfe44398e9b1e968de96a186e177085f870b8ad781a679030c9409944923d33" [label="local://context" shape="ellipse"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label="/bin/sh -c addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j" shape="box"];
  "sha256:245635295bd9d95bd9bcda07a40b6b6e7214576eb478b26c7f472a8c0c4f4705" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:db5f4e624267af104859d4aa7777a821e0e439efffeda5801b54797c13854fa8" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:81de27950dfe4425f24b7e843a3401ff18622ffecff669a7e9fe350516e2d52d" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:a345f7a7e7b794cf7da345efa8766acd1792e72d739f27d6480fec3eb4dcb1bc" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:3fe90c0b25362b20d97fe0d6d1d577718071a289965b1c23ab97e538ab578c3a" [label="sha256:3fe90c0b25362b20d97fe0d6d1d577718071a289965b1c23ab97e538ab578c3a" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label=""];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" -> "sha256:245635295bd9d95bd9bcda07a40b6b6e7214576eb478b26c7f472a8c0c4f4705" [label=""];
  "sha256:abfe44398e9b1e968de96a186e177085f870b8ad781a679030c9409944923d33" -> "sha256:245635295bd9d95bd9bcda07a40b6b6e7214576eb478b26c7f472a8c0c4f4705" [label=""];
  "sha256:245635295bd9d95bd9bcda07a40b6b6e7214576eb478b26c7f472a8c0c4f4705" -> "sha256:db5f4e624267af104859d4aa7777a821e0e439efffeda5801b54797c13854fa8" [label=""];
  "sha256:db5f4e624267af104859d4aa7777a821e0e439efffeda5801b54797c13854fa8" -> "sha256:81de27950dfe4425f24b7e843a3401ff18622ffecff669a7e9fe350516e2d52d" [label=""];
  "sha256:81de27950dfe4425f24b7e843a3401ff18622ffecff669a7e9fe350516e2d52d" -> "sha256:a345f7a7e7b794cf7da345efa8766acd1792e72d739f27d6480fec3eb4dcb1bc" [label=""];
  "sha256:abfe44398e9b1e968de96a186e177085f870b8ad781a679030c9409944923d33" -> "sha256:a345f7a7e7b794cf7da345efa8766acd1792e72d739f27d6480fec3eb4dcb1bc" [label=""];
  "sha256:a345f7a7e7b794cf7da345efa8766acd1792e72d739f27d6480fec3eb4dcb1bc" -> "sha256:3fe90c0b25362b20d97fe0d6d1d577718071a289965b1c23ab97e538ab578c3a" [label=""];
}

