[app/sources/228391366.Dockerfile]
digraph {
  "sha256:06e8ecac68a1e4cdc423aecbc6da58a8b265a97ae172fe8c3584f420d28f1490" [label="docker-image://docker.io/docker/compose:1.23.2@sha256:f6e4963cd17f709fb57f7cf0842e269ed6ba173c3490055b50c701a257feb860" shape="ellipse"];
  "sha256:98144945cedf4a15da35b0c19f9fb1d18a451dfc46cc267d0da8ce630b7fa966" [label="/bin/sh -c apk add --update curl" shape="box"];
  "sha256:f771bfac89374c12e83c3e6d6d57f0b0ecd168feeeed76545d4c4ce4e9eddb88" [label="/bin/sh -c set -x \t&& curl -fSL \"https://${DOCKER_BUCKET}/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz\" -o docker.tgz \t&& tar -xzvf docker.tgz \t&& mv docker/docker /usr/bin/ \t&& rm -rf docker docker.tgz \t&& docker -v" shape="box"];
  "sha256:fabbc96cf6d41b806e93c01caf78ec98444a10288c8361de608a54ec493a2e40" [label="/bin/sh -c mkdir -p /compose /app" shape="box"];
  "sha256:45345ffa35d18e463893925aa9e8b07bd0cd4516561a4838b31b497c4fbbaf20" [label="mkdir{path=/app}" shape="note"];
  "sha256:ea170d00e4796ca4974b4c43e422d0365eb87017492fff82f1f5fd4afdcfc729" [label="local://context" shape="ellipse"];
  "sha256:88f107cd03b29bbcacbb309f735cb5d8410290d709bc88bcd702e1f3ed8598ea" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:dfeb312c09d63738ed924c53a411fc16d4365a882becfd1799c333186ed0e75a" [label="sha256:dfeb312c09d63738ed924c53a411fc16d4365a882becfd1799c333186ed0e75a" shape="plaintext"];
  "sha256:06e8ecac68a1e4cdc423aecbc6da58a8b265a97ae172fe8c3584f420d28f1490" -> "sha256:98144945cedf4a15da35b0c19f9fb1d18a451dfc46cc267d0da8ce630b7fa966" [label=""];
  "sha256:98144945cedf4a15da35b0c19f9fb1d18a451dfc46cc267d0da8ce630b7fa966" -> "sha256:f771bfac89374c12e83c3e6d6d57f0b0ecd168feeeed76545d4c4ce4e9eddb88" [label=""];
  "sha256:f771bfac89374c12e83c3e6d6d57f0b0ecd168feeeed76545d4c4ce4e9eddb88" -> "sha256:fabbc96cf6d41b806e93c01caf78ec98444a10288c8361de608a54ec493a2e40" [label=""];
  "sha256:fabbc96cf6d41b806e93c01caf78ec98444a10288c8361de608a54ec493a2e40" -> "sha256:45345ffa35d18e463893925aa9e8b07bd0cd4516561a4838b31b497c4fbbaf20" [label=""];
  "sha256:45345ffa35d18e463893925aa9e8b07bd0cd4516561a4838b31b497c4fbbaf20" -> "sha256:88f107cd03b29bbcacbb309f735cb5d8410290d709bc88bcd702e1f3ed8598ea" [label=""];
  "sha256:ea170d00e4796ca4974b4c43e422d0365eb87017492fff82f1f5fd4afdcfc729" -> "sha256:88f107cd03b29bbcacbb309f735cb5d8410290d709bc88bcd702e1f3ed8598ea" [label=""];
  "sha256:88f107cd03b29bbcacbb309f735cb5d8410290d709bc88bcd702e1f3ed8598ea" -> "sha256:dfeb312c09d63738ed924c53a411fc16d4365a882becfd1799c333186ed0e75a" [label=""];
}

