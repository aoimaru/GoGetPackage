[app/sources/282859314.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:4f72e265da9a0f61ebbd5a270b2f992ea692630d398525c70a6822d702367f94" [label="https://github.com/krallin/tini/releases/download/v0.16.1/tini" shape="ellipse"];
  "sha256:fd9cc1ee9d170838ccf7531dc21a7d78bb1660311a4b4b37c8200a040dcffb30" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:afdb48b0b441e26350e5ef4529b250b3f1058b875fbd7ee5e333d32eb131b882" [label="/bin/sh -c chmod +x /tini" shape="box"];
  "sha256:a16358e44ecbde67adaf3b5bde1f35fbae0da45d380de8c154487a3c6d866cdc" [label="/bin/sh -c latestBaseurl=\"$(curl -s https://api.github.com/repos/tianon/gosu/releases | grep browser_download_url | head -n 1 | cut -d '\"' -f 4 | sed 's:/[^/]*$::')\" && dpkgArch=\"$(dpkg --print-architecture | awk -F- '{ print $NF }')\" && curl -o /usr/local/bin/gosu -SL \"$latestBaseurl/gosu-$dpkgArch\" && curl -o /usr/local/bin/gosu.asc -SL \"$latestBaseurl/gosu-$dpkgArch.asc\" && export GNUPGHOME=\"$(mktemp -d)\" && echo \"disable-ipv6\" >> $GNUPGHOME/dirmngr.conf && gpg --no-tty --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && gpg --no-tty --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu && rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc && chmod +x /usr/local/bin/gosu && gosu nobody true WORKDIR /home/node/" shape="box"];
  "sha256:74a55e9a5ab208332ac66c905a0a611f12f199dec70d63eaaca158ce4ccb85eb" [label="/bin/sh -c cd /home/node/     && git clone https://github.com/ZencashOfficial/secnodetracker.git     && cd secnodetracker     && npm install" shape="box"];
  "sha256:7c1c79db0bd30748b68dafd1ee24081c69e0a92f1cdc817eeedf12aa2523cc01" [label="local://context" shape="ellipse"];
  "sha256:769ce328c88e5a7fe8ed83a11568f6613aabca1a5df05747a3d6fcca4421faee" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/entrypoint.sh}" shape="note"];
  "sha256:3a0efa0dc6e0138900059e408c45ed28c929b158333243989bc29135a6145a86" [label="sha256:3a0efa0dc6e0138900059e408c45ed28c929b158333243989bc29135a6145a86" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:fd9cc1ee9d170838ccf7531dc21a7d78bb1660311a4b4b37c8200a040dcffb30" [label=""];
  "sha256:4f72e265da9a0f61ebbd5a270b2f992ea692630d398525c70a6822d702367f94" -> "sha256:fd9cc1ee9d170838ccf7531dc21a7d78bb1660311a4b4b37c8200a040dcffb30" [label=""];
  "sha256:fd9cc1ee9d170838ccf7531dc21a7d78bb1660311a4b4b37c8200a040dcffb30" -> "sha256:afdb48b0b441e26350e5ef4529b250b3f1058b875fbd7ee5e333d32eb131b882" [label=""];
  "sha256:afdb48b0b441e26350e5ef4529b250b3f1058b875fbd7ee5e333d32eb131b882" -> "sha256:a16358e44ecbde67adaf3b5bde1f35fbae0da45d380de8c154487a3c6d866cdc" [label=""];
  "sha256:a16358e44ecbde67adaf3b5bde1f35fbae0da45d380de8c154487a3c6d866cdc" -> "sha256:74a55e9a5ab208332ac66c905a0a611f12f199dec70d63eaaca158ce4ccb85eb" [label=""];
  "sha256:74a55e9a5ab208332ac66c905a0a611f12f199dec70d63eaaca158ce4ccb85eb" -> "sha256:769ce328c88e5a7fe8ed83a11568f6613aabca1a5df05747a3d6fcca4421faee" [label=""];
  "sha256:7c1c79db0bd30748b68dafd1ee24081c69e0a92f1cdc817eeedf12aa2523cc01" -> "sha256:769ce328c88e5a7fe8ed83a11568f6613aabca1a5df05747a3d6fcca4421faee" [label=""];
  "sha256:769ce328c88e5a7fe8ed83a11568f6613aabca1a5df05747a3d6fcca4421faee" -> "sha256:3a0efa0dc6e0138900059e408c45ed28c929b158333243989bc29135a6145a86" [label=""];
}

