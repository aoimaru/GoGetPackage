[app/sources/220624796.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl" shape="box"];
  "sha256:7c1b335aedd9af6603f83bd591db29893b5fc6fdd2868bd44ed3c7d056daa6fd" [label="local://context" shape="ellipse"];
  "sha256:7d32df7aa1dc2a2828df82d1d5582214afc028f1f34a45f3bd24b0a421a2f31f" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:ef8825ea7aa3d6bf2cac52643e2cd4ebb0160000b02c28dfcfb03d61a8b39303" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:9790c0b45c47b02cbb074da00690e609bb6deb51900f0504d8c233ab8af2948b" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:52de2acb24548cead73d1549832b36202d0aa88097ec0cd91a3a6ed1f6e7eb0a" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:5972837bc55015324315cb7093de9fbf2dfac094f20fb700bc6bdd2476e125ad" [label="sha256:5972837bc55015324315cb7093de9fbf2dfac094f20fb700bc6bdd2476e125ad" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label=""];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" -> "sha256:7d32df7aa1dc2a2828df82d1d5582214afc028f1f34a45f3bd24b0a421a2f31f" [label=""];
  "sha256:7c1b335aedd9af6603f83bd591db29893b5fc6fdd2868bd44ed3c7d056daa6fd" -> "sha256:7d32df7aa1dc2a2828df82d1d5582214afc028f1f34a45f3bd24b0a421a2f31f" [label=""];
  "sha256:7d32df7aa1dc2a2828df82d1d5582214afc028f1f34a45f3bd24b0a421a2f31f" -> "sha256:ef8825ea7aa3d6bf2cac52643e2cd4ebb0160000b02c28dfcfb03d61a8b39303" [label=""];
  "sha256:ef8825ea7aa3d6bf2cac52643e2cd4ebb0160000b02c28dfcfb03d61a8b39303" -> "sha256:9790c0b45c47b02cbb074da00690e609bb6deb51900f0504d8c233ab8af2948b" [label=""];
  "sha256:9790c0b45c47b02cbb074da00690e609bb6deb51900f0504d8c233ab8af2948b" -> "sha256:52de2acb24548cead73d1549832b36202d0aa88097ec0cd91a3a6ed1f6e7eb0a" [label=""];
  "sha256:7c1b335aedd9af6603f83bd591db29893b5fc6fdd2868bd44ed3c7d056daa6fd" -> "sha256:52de2acb24548cead73d1549832b36202d0aa88097ec0cd91a3a6ed1f6e7eb0a" [label=""];
  "sha256:52de2acb24548cead73d1549832b36202d0aa88097ec0cd91a3a6ed1f6e7eb0a" -> "sha256:5972837bc55015324315cb7093de9fbf2dfac094f20fb700bc6bdd2476e125ad" [label=""];
}

