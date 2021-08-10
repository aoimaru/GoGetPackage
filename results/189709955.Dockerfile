[app/sources/189709955.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:3ec0727bcbd75900015163a7a0caa828349d34cebe684d213c6ea684d0f638cf" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:5c7a9bb0f36c2b2bbd09efe789b52b886a81ea5a3461dab6fb4a3656944ce2d1" [label="/bin/sh -c apt-get update -qq &&     apt-get install -qqy --no-install-recommends      apt-transport-https       build-essential       curl       ca-certificates       git       lsb-release       python-all       rlwrap       vim       nano       jq &&     rm -rf /var/lib/apt/lists/* &&     curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.4-1nodesource1~jessie1_amd64.deb > node.deb &&       dpkg -i node.deb &&       rm node.deb &&       npm install --global azure-cli@0.9.6 &&       azure --completion >> ~/azure.completion.sh &&       echo 'source ~/azure.completion.sh' >> ~/.bashrc &&       azure" shape="box"];
  "sha256:b7947f228de12d48f56a0cd86cf76d8c2d8f551e1a944dc89a2bbf63a9371b0a" [label="sha256:b7947f228de12d48f56a0cd86cf76d8c2d8f551e1a944dc89a2bbf63a9371b0a" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:3ec0727bcbd75900015163a7a0caa828349d34cebe684d213c6ea684d0f638cf" [label=""];
  "sha256:3ec0727bcbd75900015163a7a0caa828349d34cebe684d213c6ea684d0f638cf" -> "sha256:5c7a9bb0f36c2b2bbd09efe789b52b886a81ea5a3461dab6fb4a3656944ce2d1" [label=""];
  "sha256:5c7a9bb0f36c2b2bbd09efe789b52b886a81ea5a3461dab6fb4a3656944ce2d1" -> "sha256:b7947f228de12d48f56a0cd86cf76d8c2d8f551e1a944dc89a2bbf63a9371b0a" [label=""];
}

