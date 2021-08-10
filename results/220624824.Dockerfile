[app/sources/220624824.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl" shape="box"];
  "sha256:65d770bd29bea3e82baf242fae2f5e87bfa08cf2ca79003c68837dbbbc151d06" [label="local://context" shape="ellipse"];
  "sha256:9acef54f8d7dcf12f5e66a65c392e9a450d2c0d2a348260d1755e2de63b60d51" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:c77d27cf459861b50f7180a21c1d2c099bb4398651dd4b9ea1c90dcd2c88395b" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:6c9b1492a0a6414e6fef2958a405e4eb683397fb758b8082ba3b1cd695175595" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:743b38bb147abc70339760b0fdce19035edba54497603c89b215fc8cb933bea3" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:39b987e20e6b48f3cbdc1c28a661df1db537b13fa30f8257db06f0dd689ed26f" [label="sha256:39b987e20e6b48f3cbdc1c28a661df1db537b13fa30f8257db06f0dd689ed26f" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label=""];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" -> "sha256:9acef54f8d7dcf12f5e66a65c392e9a450d2c0d2a348260d1755e2de63b60d51" [label=""];
  "sha256:65d770bd29bea3e82baf242fae2f5e87bfa08cf2ca79003c68837dbbbc151d06" -> "sha256:9acef54f8d7dcf12f5e66a65c392e9a450d2c0d2a348260d1755e2de63b60d51" [label=""];
  "sha256:9acef54f8d7dcf12f5e66a65c392e9a450d2c0d2a348260d1755e2de63b60d51" -> "sha256:c77d27cf459861b50f7180a21c1d2c099bb4398651dd4b9ea1c90dcd2c88395b" [label=""];
  "sha256:c77d27cf459861b50f7180a21c1d2c099bb4398651dd4b9ea1c90dcd2c88395b" -> "sha256:6c9b1492a0a6414e6fef2958a405e4eb683397fb758b8082ba3b1cd695175595" [label=""];
  "sha256:6c9b1492a0a6414e6fef2958a405e4eb683397fb758b8082ba3b1cd695175595" -> "sha256:743b38bb147abc70339760b0fdce19035edba54497603c89b215fc8cb933bea3" [label=""];
  "sha256:65d770bd29bea3e82baf242fae2f5e87bfa08cf2ca79003c68837dbbbc151d06" -> "sha256:743b38bb147abc70339760b0fdce19035edba54497603c89b215fc8cb933bea3" [label=""];
  "sha256:743b38bb147abc70339760b0fdce19035edba54497603c89b215fc8cb933bea3" -> "sha256:39b987e20e6b48f3cbdc1c28a661df1db537b13fa30f8257db06f0dd689ed26f" [label=""];
}

