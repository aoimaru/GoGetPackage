[app/sources/481774768.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:477d650aed3ba9a66930d80fccab3207194631ac6cc095eca81a3c3b94a662f8" [label="/bin/sh -c echo $DOCKER_TIMEZONE > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:7b83c944985cdef8d1575e5e0775aa281e4a29baac3043b43242e5875a81f71c" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qqy     openjdk-7-jre-headless" shape="box"];
  "sha256:eedf119a079ffe23c839ecbcf453b0e7ce6f599b22e1574e8b10d94e90c56813" [label="local://context" shape="ellipse"];
  "sha256:3dc312707295908da050f92d9a8793bcdd88c41949acd0d67da405684fed234d" [label="copy{src=/solr_4.10, dest=/opt/solr}" shape="note"];
  "sha256:5b032463bfc36bdb398100ce9c8e7cf89358abe62097e8c7d1fb9604e6525030" [label="copy{src=/init/solr, dest=/etc/init.d/solr}" shape="note"];
  "sha256:f70be37d119632f36e2cfe0fc9148fe38bfcd30fc6bf1d5f19042cf0f7d78595" [label="/bin/sh -c chmod 755 /etc/init.d/solr" shape="box"];
  "sha256:ce6b5fa90ec1f7cc6da6fb9d1120948ad2719f84bd9c686b05259f57c20ed770" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cabe44152ef4bd5f9c17b0405de5c6c4880a55b7111b7cb0406efea09dd1099f" [label="copy{src=/bootstrap.sh, dest=/root/bootstrap.sh}" shape="note"];
  "sha256:efbd4472f18b032a0f509d8ce17f9d7d66b8a55b40e58e82bcaab9677d5f1b21" [label="/bin/sh -c chmod 755 /root/bootstrap.sh" shape="box"];
  "sha256:4501a9363331cce4577365519e021e4cdbdb9cb3d9d0ad1b60e03fe5c527a4b5" [label="mkdir{path=/opt/solr}" shape="note"];
  "sha256:f7c33ebcfcf8d11c9ad10e7c71cd3cf6d69505ddb4def603054f27a9bd8b9962" [label="sha256:f7c33ebcfcf8d11c9ad10e7c71cd3cf6d69505ddb4def603054f27a9bd8b9962" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:477d650aed3ba9a66930d80fccab3207194631ac6cc095eca81a3c3b94a662f8" [label=""];
  "sha256:477d650aed3ba9a66930d80fccab3207194631ac6cc095eca81a3c3b94a662f8" -> "sha256:7b83c944985cdef8d1575e5e0775aa281e4a29baac3043b43242e5875a81f71c" [label=""];
  "sha256:7b83c944985cdef8d1575e5e0775aa281e4a29baac3043b43242e5875a81f71c" -> "sha256:3dc312707295908da050f92d9a8793bcdd88c41949acd0d67da405684fed234d" [label=""];
  "sha256:eedf119a079ffe23c839ecbcf453b0e7ce6f599b22e1574e8b10d94e90c56813" -> "sha256:3dc312707295908da050f92d9a8793bcdd88c41949acd0d67da405684fed234d" [label=""];
  "sha256:3dc312707295908da050f92d9a8793bcdd88c41949acd0d67da405684fed234d" -> "sha256:5b032463bfc36bdb398100ce9c8e7cf89358abe62097e8c7d1fb9604e6525030" [label=""];
  "sha256:eedf119a079ffe23c839ecbcf453b0e7ce6f599b22e1574e8b10d94e90c56813" -> "sha256:5b032463bfc36bdb398100ce9c8e7cf89358abe62097e8c7d1fb9604e6525030" [label=""];
  "sha256:5b032463bfc36bdb398100ce9c8e7cf89358abe62097e8c7d1fb9604e6525030" -> "sha256:f70be37d119632f36e2cfe0fc9148fe38bfcd30fc6bf1d5f19042cf0f7d78595" [label=""];
  "sha256:f70be37d119632f36e2cfe0fc9148fe38bfcd30fc6bf1d5f19042cf0f7d78595" -> "sha256:ce6b5fa90ec1f7cc6da6fb9d1120948ad2719f84bd9c686b05259f57c20ed770" [label=""];
  "sha256:ce6b5fa90ec1f7cc6da6fb9d1120948ad2719f84bd9c686b05259f57c20ed770" -> "sha256:cabe44152ef4bd5f9c17b0405de5c6c4880a55b7111b7cb0406efea09dd1099f" [label=""];
  "sha256:eedf119a079ffe23c839ecbcf453b0e7ce6f599b22e1574e8b10d94e90c56813" -> "sha256:cabe44152ef4bd5f9c17b0405de5c6c4880a55b7111b7cb0406efea09dd1099f" [label=""];
  "sha256:cabe44152ef4bd5f9c17b0405de5c6c4880a55b7111b7cb0406efea09dd1099f" -> "sha256:efbd4472f18b032a0f509d8ce17f9d7d66b8a55b40e58e82bcaab9677d5f1b21" [label=""];
  "sha256:efbd4472f18b032a0f509d8ce17f9d7d66b8a55b40e58e82bcaab9677d5f1b21" -> "sha256:4501a9363331cce4577365519e021e4cdbdb9cb3d9d0ad1b60e03fe5c527a4b5" [label=""];
  "sha256:4501a9363331cce4577365519e021e4cdbdb9cb3d9d0ad1b60e03fe5c527a4b5" -> "sha256:f7c33ebcfcf8d11c9ad10e7c71cd3cf6d69505ddb4def603054f27a9bd8b9962" [label=""];
}

