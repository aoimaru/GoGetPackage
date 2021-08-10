[app/sources/216786986.Dockerfile]
digraph {
  "sha256:d6f9b313a47ab1afb621f32d300d030f49bdfee3b128a4695bbdb6b3d7f4a60c" [label="docker-image://docker.io/anapsix/alpine-java:jdk8" shape="ellipse"];
  "sha256:0c566b7049d41c2c8ea9aba10c1658f31fadf5dc1fbd50c1f9ba9aecd1e94262" [label="/bin/sh -c set -x &&     apk add --no-cache unzip curl ca-certificates gnupg jq &&     eval $(gpg-agent --daemon) &&     MIRROR=`curl -sSL https://www.apache.org/dyn/closer.cgi\\?as_json\\=1 | jq -r '.preferred'` &&     curl -sSLO \"${MIRROR}kafka/${KAFKA_VERSION}/${KAFKA_DIST_TGZ}\" &&     curl -sSLO https://dist.apache.org/repos/dist/release/kafka/${KAFKA_VERSION}/${KAFKA_DIST_ASC} &&     curl -sSL  https://kafka.apache.org/KEYS | gpg -q --import - &&     gpg -q --verify ${KAFKA_DIST_ASC} &&     mkdir -p /opt &&     mv ${KAFKA_DIST_TGZ} /tmp &&     tar xfz /tmp/${KAFKA_DIST_TGZ} -C /opt &&     rm /tmp/${KAFKA_DIST_TGZ} &&     apk del unzip curl ca-certificates gnupg" shape="box"];
  "sha256:2883bcd281cf3b67ad238886961628952af470225f006ea4529b68f357670b22" [label="mkdir{path=/opt/kafka_2.12-1.1.0}" shape="note"];
  "sha256:0c733af0f8a1991705dbb5ba288a826874f314cb2b5ff26e0c55923ded07bbd4" [label="local://context" shape="ellipse"];
  "sha256:217e17c644840aea3b99142b314c267c3a9517704242c4ad6721c45fda22840b" [label="copy{src=/start-connect.sh, dest=/opt/kafka_2.12-1.1.0/start-connect.sh}" shape="note"];
  "sha256:826796ca2535cb0ba730c68f32139a132be63d0d38c67cf96dbe3adf9d0a2529" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:92e14421aa5cc0013bd6f72b6ad2d3a147cfae605dedd9d632de4e9b4d0e9e73" [label="sha256:92e14421aa5cc0013bd6f72b6ad2d3a147cfae605dedd9d632de4e9b4d0e9e73" shape="plaintext"];
  "sha256:d6f9b313a47ab1afb621f32d300d030f49bdfee3b128a4695bbdb6b3d7f4a60c" -> "sha256:0c566b7049d41c2c8ea9aba10c1658f31fadf5dc1fbd50c1f9ba9aecd1e94262" [label=""];
  "sha256:0c566b7049d41c2c8ea9aba10c1658f31fadf5dc1fbd50c1f9ba9aecd1e94262" -> "sha256:2883bcd281cf3b67ad238886961628952af470225f006ea4529b68f357670b22" [label=""];
  "sha256:2883bcd281cf3b67ad238886961628952af470225f006ea4529b68f357670b22" -> "sha256:217e17c644840aea3b99142b314c267c3a9517704242c4ad6721c45fda22840b" [label=""];
  "sha256:0c733af0f8a1991705dbb5ba288a826874f314cb2b5ff26e0c55923ded07bbd4" -> "sha256:217e17c644840aea3b99142b314c267c3a9517704242c4ad6721c45fda22840b" [label=""];
  "sha256:217e17c644840aea3b99142b314c267c3a9517704242c4ad6721c45fda22840b" -> "sha256:826796ca2535cb0ba730c68f32139a132be63d0d38c67cf96dbe3adf9d0a2529" [label=""];
  "sha256:0c733af0f8a1991705dbb5ba288a826874f314cb2b5ff26e0c55923ded07bbd4" -> "sha256:826796ca2535cb0ba730c68f32139a132be63d0d38c67cf96dbe3adf9d0a2529" [label=""];
  "sha256:826796ca2535cb0ba730c68f32139a132be63d0d38c67cf96dbe3adf9d0a2529" -> "sha256:92e14421aa5cc0013bd6f72b6ad2d3a147cfae605dedd9d632de4e9b4d0e9e73" [label=""];
}

