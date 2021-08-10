[app/sources/220625100.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label="/bin/sh -c addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j" shape="box"];
  "sha256:4e3cdac43b5b2314d92d92b91fa18e997ca6fcb7a742b0c5af368b535ff62dcb" [label="local://context" shape="ellipse"];
  "sha256:7207bd38d31cc7e2567d86bf3449231d7f98b7cfe8f14f7bfd620c4b3b4a8802" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:e4a10b8637437f213e870a3a4e766e2d89ca5232db8d48f4261d985bb2631d71" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:fdbc25ae57aa87619969bce069538d14acdb01f67b686df02c87d1a688b5184f" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:8b995b895c444c7f2f09f9946f9b8ca18ab4f87c59d6bb118188fb2bbc1b7034" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:4dbd6e597a01ca43f42d6c68297e50a217bb7f78403b2b56b729082389c1916b" [label="sha256:4dbd6e597a01ca43f42d6c68297e50a217bb7f78403b2b56b729082389c1916b" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label=""];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" -> "sha256:7207bd38d31cc7e2567d86bf3449231d7f98b7cfe8f14f7bfd620c4b3b4a8802" [label=""];
  "sha256:4e3cdac43b5b2314d92d92b91fa18e997ca6fcb7a742b0c5af368b535ff62dcb" -> "sha256:7207bd38d31cc7e2567d86bf3449231d7f98b7cfe8f14f7bfd620c4b3b4a8802" [label=""];
  "sha256:7207bd38d31cc7e2567d86bf3449231d7f98b7cfe8f14f7bfd620c4b3b4a8802" -> "sha256:e4a10b8637437f213e870a3a4e766e2d89ca5232db8d48f4261d985bb2631d71" [label=""];
  "sha256:e4a10b8637437f213e870a3a4e766e2d89ca5232db8d48f4261d985bb2631d71" -> "sha256:fdbc25ae57aa87619969bce069538d14acdb01f67b686df02c87d1a688b5184f" [label=""];
  "sha256:fdbc25ae57aa87619969bce069538d14acdb01f67b686df02c87d1a688b5184f" -> "sha256:8b995b895c444c7f2f09f9946f9b8ca18ab4f87c59d6bb118188fb2bbc1b7034" [label=""];
  "sha256:4e3cdac43b5b2314d92d92b91fa18e997ca6fcb7a742b0c5af368b535ff62dcb" -> "sha256:8b995b895c444c7f2f09f9946f9b8ca18ab4f87c59d6bb118188fb2bbc1b7034" [label=""];
  "sha256:8b995b895c444c7f2f09f9946f9b8ca18ab4f87c59d6bb118188fb2bbc1b7034" -> "sha256:4dbd6e597a01ca43f42d6c68297e50a217bb7f78403b2b56b729082389c1916b" [label=""];
}

