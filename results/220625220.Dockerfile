[app/sources/220625220.Dockerfile]
digraph {
  "sha256:57a212f6a9e395a9261fb048bfe0b6712119932e814ef36aea5ca915f63696bd" [label="local://context" shape="ellipse"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label="/bin/sh -c addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j" shape="box"];
  "sha256:287fca162b4df67766ac8b764aaceb42da9b02203b8d0f02fb0ac371115dcb0a" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:ad1c54471f0a6c95d2dee36c3752aeddb36c0b92ab5ac9ea4483d390e5eaed78" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:c56e434870ec0c88df960a3a4cb4a05d67b63a5611e68f2a8b6d5e8e47a55c2c" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:291accc3ec8da36aaf9c7e2ef2a2478f7a604b04261a955511dbaa1537c0a77b" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:876b1adfe63b1ee16d5b0e95241309b136a0e7c0c0de539d4c026a697e1228d4" [label="sha256:876b1adfe63b1ee16d5b0e95241309b136a0e7c0c0de539d4c026a697e1228d4" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" [label=""];
  "sha256:7357f8608c7dac5ba948a8292279cf93345dc597adbc21dbb6ba769e4b0d3661" -> "sha256:287fca162b4df67766ac8b764aaceb42da9b02203b8d0f02fb0ac371115dcb0a" [label=""];
  "sha256:57a212f6a9e395a9261fb048bfe0b6712119932e814ef36aea5ca915f63696bd" -> "sha256:287fca162b4df67766ac8b764aaceb42da9b02203b8d0f02fb0ac371115dcb0a" [label=""];
  "sha256:287fca162b4df67766ac8b764aaceb42da9b02203b8d0f02fb0ac371115dcb0a" -> "sha256:ad1c54471f0a6c95d2dee36c3752aeddb36c0b92ab5ac9ea4483d390e5eaed78" [label=""];
  "sha256:ad1c54471f0a6c95d2dee36c3752aeddb36c0b92ab5ac9ea4483d390e5eaed78" -> "sha256:c56e434870ec0c88df960a3a4cb4a05d67b63a5611e68f2a8b6d5e8e47a55c2c" [label=""];
  "sha256:c56e434870ec0c88df960a3a4cb4a05d67b63a5611e68f2a8b6d5e8e47a55c2c" -> "sha256:291accc3ec8da36aaf9c7e2ef2a2478f7a604b04261a955511dbaa1537c0a77b" [label=""];
  "sha256:57a212f6a9e395a9261fb048bfe0b6712119932e814ef36aea5ca915f63696bd" -> "sha256:291accc3ec8da36aaf9c7e2ef2a2478f7a604b04261a955511dbaa1537c0a77b" [label=""];
  "sha256:291accc3ec8da36aaf9c7e2ef2a2478f7a604b04261a955511dbaa1537c0a77b" -> "sha256:876b1adfe63b1ee16d5b0e95241309b136a0e7c0c0de539d4c026a697e1228d4" [label=""];
}

