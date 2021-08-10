[app/sources/257122446.Dockerfile]
digraph {
  "sha256:0c3a6d03080fe2516d8107b348122a3d8b287cc13598f65a3b526c5862878e80" [label="docker-image://mcr.microsoft.com/oryx/node-6.10:20190516.1@sha256:322c773bcf219e8c5bab7967725bfbc9be52585920ac42bb92b0dba03babeb69" shape="ellipse"];
  "sha256:bf74a1f5517fe3e25604bed2302c74795df75340309bb784dadc0547e8d4b90c" [label="/bin/sh -c echo \"ipv6\" >> /etc/modules" shape="box"];
  "sha256:b3752810aa8f3ff3047c8d836de12a6dbede53a5e92ecc11548b76c8a3564159" [label="/bin/sh -c npm install -g pm2      && mkdir -p /home/LogFiles /opt/startup      && echo \"root:Docker!\" | chpasswd      && echo \"cd /home\" >> /etc/bash.bashrc      && apt-get update      && apt-get install --yes --no-install-recommends openssh-server vim curl wget tcptraceroute openrc" shape="box"];
  "sha256:5b6e2aea66511a3ea2a1b7fa047bcbd48c36d321d233d2a9ff19e6ad87508f52" [label="/bin/sh -c rm -f /etc/ssh/sshd_config" shape="box"];
  "sha256:448decf16d440bf79be71f828a6910308b213aa783de8de05dca923e309858fb" [label="local://context" shape="ellipse"];
  "sha256:c7fb5aa376985061150826dfbba0aa4666880cbb841491302d3266dd9d521c73" [label="copy{src=/startup, dest=/opt/startup}" shape="note"];
  "sha256:51f9f8a9c9086fed6b766fd2af9555750509850cba97a3aa8b6ab822f50391f0" [label="copy{src=/hostingstart.html, dest=/opt/startup}" shape="note"];
  "sha256:d19d257e15f8cba5fd8d9fcc36bd4e40d502725c5eb93ab8f4c02314f3c0f2a1" [label="/bin/sh -c mkdir -p /tmp" shape="box"];
  "sha256:17bc9c0b2461559cb9d131da709ed396c4e33414fb725ebb4c8b0a20ef9f0aed" [label="copy{src=/sshd_config, dest=/etc/ssh/}" shape="note"];
  "sha256:8d3ccaeb203634757096ba46402bd4bc1740c74873df6ecec5a82ae83d4df29e" [label="copy{src=/ssh_setup.sh, dest=/tmp}" shape="note"];
  "sha256:8b2e633185200d2c4902b65302464e91a07c05b3fc21d24bed2533a6841825c1" [label="/bin/sh -c chmod -R +x /opt/startup    && chmod -R +x /tmp/ssh_setup.sh    && (sleep 1;/tmp/ssh_setup.sh 2>&1 > /dev/null)    && rm -rf /tmp/*    && cd /opt/startup    && npm install" shape="box"];
  "sha256:d8839f800c09073976f946ee53b0fbd5e1d565cf4a430d6f9c0d1f84f3189b9e" [label="mkdir{path=/home/site/wwwroot}" shape="note"];
  "sha256:fa773561cc3030cb2eeb821782330845be90e64a112d6f35d7d759267e7aa9bb" [label="sha256:fa773561cc3030cb2eeb821782330845be90e64a112d6f35d7d759267e7aa9bb" shape="plaintext"];
  "sha256:0c3a6d03080fe2516d8107b348122a3d8b287cc13598f65a3b526c5862878e80" -> "sha256:bf74a1f5517fe3e25604bed2302c74795df75340309bb784dadc0547e8d4b90c" [label=""];
  "sha256:bf74a1f5517fe3e25604bed2302c74795df75340309bb784dadc0547e8d4b90c" -> "sha256:b3752810aa8f3ff3047c8d836de12a6dbede53a5e92ecc11548b76c8a3564159" [label=""];
  "sha256:b3752810aa8f3ff3047c8d836de12a6dbede53a5e92ecc11548b76c8a3564159" -> "sha256:5b6e2aea66511a3ea2a1b7fa047bcbd48c36d321d233d2a9ff19e6ad87508f52" [label=""];
  "sha256:5b6e2aea66511a3ea2a1b7fa047bcbd48c36d321d233d2a9ff19e6ad87508f52" -> "sha256:c7fb5aa376985061150826dfbba0aa4666880cbb841491302d3266dd9d521c73" [label=""];
  "sha256:448decf16d440bf79be71f828a6910308b213aa783de8de05dca923e309858fb" -> "sha256:c7fb5aa376985061150826dfbba0aa4666880cbb841491302d3266dd9d521c73" [label=""];
  "sha256:c7fb5aa376985061150826dfbba0aa4666880cbb841491302d3266dd9d521c73" -> "sha256:51f9f8a9c9086fed6b766fd2af9555750509850cba97a3aa8b6ab822f50391f0" [label=""];
  "sha256:448decf16d440bf79be71f828a6910308b213aa783de8de05dca923e309858fb" -> "sha256:51f9f8a9c9086fed6b766fd2af9555750509850cba97a3aa8b6ab822f50391f0" [label=""];
  "sha256:51f9f8a9c9086fed6b766fd2af9555750509850cba97a3aa8b6ab822f50391f0" -> "sha256:d19d257e15f8cba5fd8d9fcc36bd4e40d502725c5eb93ab8f4c02314f3c0f2a1" [label=""];
  "sha256:d19d257e15f8cba5fd8d9fcc36bd4e40d502725c5eb93ab8f4c02314f3c0f2a1" -> "sha256:17bc9c0b2461559cb9d131da709ed396c4e33414fb725ebb4c8b0a20ef9f0aed" [label=""];
  "sha256:448decf16d440bf79be71f828a6910308b213aa783de8de05dca923e309858fb" -> "sha256:17bc9c0b2461559cb9d131da709ed396c4e33414fb725ebb4c8b0a20ef9f0aed" [label=""];
  "sha256:17bc9c0b2461559cb9d131da709ed396c4e33414fb725ebb4c8b0a20ef9f0aed" -> "sha256:8d3ccaeb203634757096ba46402bd4bc1740c74873df6ecec5a82ae83d4df29e" [label=""];
  "sha256:448decf16d440bf79be71f828a6910308b213aa783de8de05dca923e309858fb" -> "sha256:8d3ccaeb203634757096ba46402bd4bc1740c74873df6ecec5a82ae83d4df29e" [label=""];
  "sha256:8d3ccaeb203634757096ba46402bd4bc1740c74873df6ecec5a82ae83d4df29e" -> "sha256:8b2e633185200d2c4902b65302464e91a07c05b3fc21d24bed2533a6841825c1" [label=""];
  "sha256:8b2e633185200d2c4902b65302464e91a07c05b3fc21d24bed2533a6841825c1" -> "sha256:d8839f800c09073976f946ee53b0fbd5e1d565cf4a430d6f9c0d1f84f3189b9e" [label=""];
  "sha256:d8839f800c09073976f946ee53b0fbd5e1d565cf4a430d6f9c0d1f84f3189b9e" -> "sha256:fa773561cc3030cb2eeb821782330845be90e64a112d6f35d7d759267e7aa9bb" [label=""];
}

