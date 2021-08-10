[app/sources/250672542.Dockerfile]
digraph {
  "sha256:1083731f53c038b026d6883960dc9e542b96a6de09560791b046d2f02eca6536" [label="local://context" shape="ellipse"];
  "sha256:bde32718daea3d27608b9b631ea62e57e60aa7a0f3697edab55ac77371069b0c" [label="docker-image://docker.io/library/node:8.15-jessie" shape="ellipse"];
  "sha256:47f7eb887f893dea941e195e4dbbf915dfcbf6ca2946733f44a8cf3409492d4f" [label="/bin/sh -c mkdir /var/opt/node &&     apt-get update &&     apt-get install -y cowsay &&     ln -s /usr/games/cowsay /usr/local/bin/cowsay" shape="box"];
  "sha256:aecd00e6a5848eca04b3687f182692760d4e226b85b1f95465bd8e60f0d61b17" [label="copy{src=/src, dest=/var/opt/node/}" shape="note"];
  "sha256:e6462cb943f532328502547e98ddfeacb3d7e2907dc52c631b261ef7545edb7d" [label="copy{src=/package.json, dest=/var/opt/node/}" shape="note"];
  "sha256:97bcf42c8b3020cad2d02aff4ae00c39648c04f27f9a18a80ef81e64e04788d9" [label="mkdir{path=/var/opt/node}" shape="note"];
  "sha256:39dfaba544ef2ca2eb58e4ad715cf0fb0d05c1bcfdbb13683d003608e6ef31b7" [label="/bin/sh -c npm install" shape="box"];
  "sha256:0dbb747cb500e21c37212d2a7039720d3b2711cd110fe4181af65193be8ffc64" [label="sha256:0dbb747cb500e21c37212d2a7039720d3b2711cd110fe4181af65193be8ffc64" shape="plaintext"];
  "sha256:bde32718daea3d27608b9b631ea62e57e60aa7a0f3697edab55ac77371069b0c" -> "sha256:47f7eb887f893dea941e195e4dbbf915dfcbf6ca2946733f44a8cf3409492d4f" [label=""];
  "sha256:47f7eb887f893dea941e195e4dbbf915dfcbf6ca2946733f44a8cf3409492d4f" -> "sha256:aecd00e6a5848eca04b3687f182692760d4e226b85b1f95465bd8e60f0d61b17" [label=""];
  "sha256:1083731f53c038b026d6883960dc9e542b96a6de09560791b046d2f02eca6536" -> "sha256:aecd00e6a5848eca04b3687f182692760d4e226b85b1f95465bd8e60f0d61b17" [label=""];
  "sha256:aecd00e6a5848eca04b3687f182692760d4e226b85b1f95465bd8e60f0d61b17" -> "sha256:e6462cb943f532328502547e98ddfeacb3d7e2907dc52c631b261ef7545edb7d" [label=""];
  "sha256:1083731f53c038b026d6883960dc9e542b96a6de09560791b046d2f02eca6536" -> "sha256:e6462cb943f532328502547e98ddfeacb3d7e2907dc52c631b261ef7545edb7d" [label=""];
  "sha256:e6462cb943f532328502547e98ddfeacb3d7e2907dc52c631b261ef7545edb7d" -> "sha256:97bcf42c8b3020cad2d02aff4ae00c39648c04f27f9a18a80ef81e64e04788d9" [label=""];
  "sha256:97bcf42c8b3020cad2d02aff4ae00c39648c04f27f9a18a80ef81e64e04788d9" -> "sha256:39dfaba544ef2ca2eb58e4ad715cf0fb0d05c1bcfdbb13683d003608e6ef31b7" [label=""];
  "sha256:39dfaba544ef2ca2eb58e4ad715cf0fb0d05c1bcfdbb13683d003608e6ef31b7" -> "sha256:0dbb747cb500e21c37212d2a7039720d3b2711cd110fe4181af65193be8ffc64" [label=""];
}

