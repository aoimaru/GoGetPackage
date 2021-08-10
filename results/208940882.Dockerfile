[app/sources/208940882.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c469cbceb87ae44f9e25302329ae47d56846180eb1d36ca34dfcc3105d80aa32" [label="/bin/sh -c apk add --no-cache nfs-utils" shape="box"];
  "sha256:121b52c105f40eb8a95c2449f4904d58906e5e69733434ffeeba91a10b45a03f" [label="https://github.com/just-containers/s6-overlay/releases/download/v1.21.2.1/s6-overlay-amd64.tar.gz" shape="ellipse"];
  "sha256:85c2eb7af0a6888d899ce1a8c028e93bcafe67d9de38e4dea44a88300387a7aa" [label="copy{src=/s6-overlay-amd64.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:c569c30325372cdeee974edee8fa509024a38bc8d7cde195d3931026250790e2" [label="/bin/sh -c tar xzf /tmp/s6-overlay-amd64.tar.gz -C /" shape="box"];
  "sha256:cd4cf9abeaaf52186e31f996c6507211cdcdbcc1fe1a4ab3d5c7ef4aa9c1a744" [label="local://context" shape="ellipse"];
  "sha256:a42b6aebd27e22be50b1aad2332c6c307c5e432a7def96b8e6a93217dc3d705a" [label="copy{src=/s6/config.init, dest=/etc/cont-init.d/00-config}" shape="note"];
  "sha256:f82c25e97591aba5b1d241954ccdffcaffceeaf7a2eec012dd24884b9f4ed971" [label="copy{src=/s6/rpcbind.run, dest=/etc/services.d/rpcbind/run}" shape="note"];
  "sha256:18d1431896ce7b93eab9636228aaab97410ff3749e6a61b3393eb9df7bcb2166" [label="copy{src=/s6/mountd.run, dest=/etc/services.d/mountd/run}" shape="note"];
  "sha256:2bbfce2cb01bc120ce6276dbe934086e1466736880b40a13385fdb2e85a0cc65" [label="sha256:2bbfce2cb01bc120ce6276dbe934086e1466736880b40a13385fdb2e85a0cc65" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c469cbceb87ae44f9e25302329ae47d56846180eb1d36ca34dfcc3105d80aa32" [label=""];
  "sha256:c469cbceb87ae44f9e25302329ae47d56846180eb1d36ca34dfcc3105d80aa32" -> "sha256:85c2eb7af0a6888d899ce1a8c028e93bcafe67d9de38e4dea44a88300387a7aa" [label=""];
  "sha256:121b52c105f40eb8a95c2449f4904d58906e5e69733434ffeeba91a10b45a03f" -> "sha256:85c2eb7af0a6888d899ce1a8c028e93bcafe67d9de38e4dea44a88300387a7aa" [label=""];
  "sha256:85c2eb7af0a6888d899ce1a8c028e93bcafe67d9de38e4dea44a88300387a7aa" -> "sha256:c569c30325372cdeee974edee8fa509024a38bc8d7cde195d3931026250790e2" [label=""];
  "sha256:c569c30325372cdeee974edee8fa509024a38bc8d7cde195d3931026250790e2" -> "sha256:a42b6aebd27e22be50b1aad2332c6c307c5e432a7def96b8e6a93217dc3d705a" [label=""];
  "sha256:cd4cf9abeaaf52186e31f996c6507211cdcdbcc1fe1a4ab3d5c7ef4aa9c1a744" -> "sha256:a42b6aebd27e22be50b1aad2332c6c307c5e432a7def96b8e6a93217dc3d705a" [label=""];
  "sha256:a42b6aebd27e22be50b1aad2332c6c307c5e432a7def96b8e6a93217dc3d705a" -> "sha256:f82c25e97591aba5b1d241954ccdffcaffceeaf7a2eec012dd24884b9f4ed971" [label=""];
  "sha256:cd4cf9abeaaf52186e31f996c6507211cdcdbcc1fe1a4ab3d5c7ef4aa9c1a744" -> "sha256:f82c25e97591aba5b1d241954ccdffcaffceeaf7a2eec012dd24884b9f4ed971" [label=""];
  "sha256:f82c25e97591aba5b1d241954ccdffcaffceeaf7a2eec012dd24884b9f4ed971" -> "sha256:18d1431896ce7b93eab9636228aaab97410ff3749e6a61b3393eb9df7bcb2166" [label=""];
  "sha256:cd4cf9abeaaf52186e31f996c6507211cdcdbcc1fe1a4ab3d5c7ef4aa9c1a744" -> "sha256:18d1431896ce7b93eab9636228aaab97410ff3749e6a61b3393eb9df7bcb2166" [label=""];
  "sha256:18d1431896ce7b93eab9636228aaab97410ff3749e6a61b3393eb9df7bcb2166" -> "sha256:2bbfce2cb01bc120ce6276dbe934086e1466736880b40a13385fdb2e85a0cc65" [label=""];
}

