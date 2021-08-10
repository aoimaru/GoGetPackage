[app/sources/220625296.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label="/bin/sh -c addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j" shape="box"];
  "sha256:df08e06586a7f8fdd545a0489141234d6cdd71e5d40056cf419f293a394e30d1" [label="local://context" shape="ellipse"];
  "sha256:9a55d1e8b3b9f8747ff8c28c63b83b2a547302f189c41b2c7de7f4b778363a51" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:4dc461a2dd5da5e0972daad67fb524aa340347c89724970ea2b052b974b5fed1" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* \"${NEO4J_HOME}\"     && rm ${NEO4J_TARBALL}     && mv \"${NEO4J_HOME}\"/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && mv \"${NEO4J_HOME}\"/logs /logs     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j \"${NEO4J_HOME}\"     && chmod -R 777 \"${NEO4J_HOME}\"     && ln -s /data \"${NEO4J_HOME}\"/data     && ln -s /logs \"${NEO4J_HOME}\"/logs     && apk del curl" shape="box"];
  "sha256:3cc22e37025f6812f48ebb0da6e597731208a049a7964e740d5ff70f8ee38ad6" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:acd7641ccab4d66bce8b5ca2052010313a96a9eb43a424bfb507e2c7f1857e0a" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:7d3ea562f8c03ca0f3b2cee4b49ce8b460f9868864ccadba55438ba51c10c526" [label="sha256:7d3ea562f8c03ca0f3b2cee4b49ce8b460f9868864ccadba55438ba51c10c526" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label=""];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" -> "sha256:9a55d1e8b3b9f8747ff8c28c63b83b2a547302f189c41b2c7de7f4b778363a51" [label=""];
  "sha256:df08e06586a7f8fdd545a0489141234d6cdd71e5d40056cf419f293a394e30d1" -> "sha256:9a55d1e8b3b9f8747ff8c28c63b83b2a547302f189c41b2c7de7f4b778363a51" [label=""];
  "sha256:9a55d1e8b3b9f8747ff8c28c63b83b2a547302f189c41b2c7de7f4b778363a51" -> "sha256:4dc461a2dd5da5e0972daad67fb524aa340347c89724970ea2b052b974b5fed1" [label=""];
  "sha256:4dc461a2dd5da5e0972daad67fb524aa340347c89724970ea2b052b974b5fed1" -> "sha256:3cc22e37025f6812f48ebb0da6e597731208a049a7964e740d5ff70f8ee38ad6" [label=""];
  "sha256:3cc22e37025f6812f48ebb0da6e597731208a049a7964e740d5ff70f8ee38ad6" -> "sha256:acd7641ccab4d66bce8b5ca2052010313a96a9eb43a424bfb507e2c7f1857e0a" [label=""];
  "sha256:df08e06586a7f8fdd545a0489141234d6cdd71e5d40056cf419f293a394e30d1" -> "sha256:acd7641ccab4d66bce8b5ca2052010313a96a9eb43a424bfb507e2c7f1857e0a" [label=""];
  "sha256:acd7641ccab4d66bce8b5ca2052010313a96a9eb43a424bfb507e2c7f1857e0a" -> "sha256:7d3ea562f8c03ca0f3b2cee4b49ce8b460f9868864ccadba55438ba51c10c526" [label=""];
}

