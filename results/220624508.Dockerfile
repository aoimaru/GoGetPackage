[app/sources/220624508.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl" shape="box"];
  "sha256:ea84ffe5db0bdc4a862ae52c134151f2a8a9845b5bbdb9b6c4834b298e2fa0ca" [label="local://context" shape="ellipse"];
  "sha256:3f7df3cb35dad4edbb4a3abfc7e26d569a2d87e0b69b7f441cb1d067ed4017da" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:d3fcb05bc3f4ba20de2e076e14ee9be4d318c326dccf2c46ccde2a0d52f305e3" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}" shape="box"];
  "sha256:65c05184d55d08c8cc8679d17bb4de03853d72e510d9115c2dec84084e54896f" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:656ca86cee5af8a27fec46a73fe4581a94ada8ce3a084660eac229119c36e6f3" [label="/bin/sh -c mv data /data     && ln -s /data" shape="box"];
  "sha256:f31c4d06274e202b7b74617d45daac6224ef21b229c62672a85aa5fdb2dfdc33" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:71e80209e4b5c6d1e98fba79f9714708da72dcd818c4b5b72ca3c33839dc557b" [label="sha256:71e80209e4b5c6d1e98fba79f9714708da72dcd818c4b5b72ca3c33839dc557b" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label=""];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" -> "sha256:3f7df3cb35dad4edbb4a3abfc7e26d569a2d87e0b69b7f441cb1d067ed4017da" [label=""];
  "sha256:ea84ffe5db0bdc4a862ae52c134151f2a8a9845b5bbdb9b6c4834b298e2fa0ca" -> "sha256:3f7df3cb35dad4edbb4a3abfc7e26d569a2d87e0b69b7f441cb1d067ed4017da" [label=""];
  "sha256:3f7df3cb35dad4edbb4a3abfc7e26d569a2d87e0b69b7f441cb1d067ed4017da" -> "sha256:d3fcb05bc3f4ba20de2e076e14ee9be4d318c326dccf2c46ccde2a0d52f305e3" [label=""];
  "sha256:d3fcb05bc3f4ba20de2e076e14ee9be4d318c326dccf2c46ccde2a0d52f305e3" -> "sha256:65c05184d55d08c8cc8679d17bb4de03853d72e510d9115c2dec84084e54896f" [label=""];
  "sha256:65c05184d55d08c8cc8679d17bb4de03853d72e510d9115c2dec84084e54896f" -> "sha256:656ca86cee5af8a27fec46a73fe4581a94ada8ce3a084660eac229119c36e6f3" [label=""];
  "sha256:656ca86cee5af8a27fec46a73fe4581a94ada8ce3a084660eac229119c36e6f3" -> "sha256:f31c4d06274e202b7b74617d45daac6224ef21b229c62672a85aa5fdb2dfdc33" [label=""];
  "sha256:ea84ffe5db0bdc4a862ae52c134151f2a8a9845b5bbdb9b6c4834b298e2fa0ca" -> "sha256:f31c4d06274e202b7b74617d45daac6224ef21b229c62672a85aa5fdb2dfdc33" [label=""];
  "sha256:f31c4d06274e202b7b74617d45daac6224ef21b229c62672a85aa5fdb2dfdc33" -> "sha256:71e80209e4b5c6d1e98fba79f9714708da72dcd818c4b5b72ca3c33839dc557b" [label=""];
}

