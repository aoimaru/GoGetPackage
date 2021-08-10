[app/sources/213735214.Dockerfile]
digraph {
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" [label="docker-image://docker.io/nodesource/sid-base:latest" shape="ellipse"];
  "sha256:6fa4769440b49294124efeec3f5e40bd869be1443c9b6a1d53bfdb66463a7b68" [label="/bin/sh -c curl https://deb.nodesource.com/node/pool/main/n/nodejs/nodejs_0.10.31-1chl1~sid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:c779724f449cfa7e8e2e4a4221db239f6f17fed1d8126d05e5506e138cae4e12" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:e61e1d4dea3398ef3b3aae93ad1ad494c5a58d6a04bca6c05ae2392dca90f453" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:961865a186c71600ccf517e7a40a562fbc9f457873577c6ec148fb7ebfeed8a0" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:ab3f4e27ae38485ca473210bdf8fa4e34cd3709befbbac1a6aaaf0fd9acf7f28" [label="sha256:ab3f4e27ae38485ca473210bdf8fa4e34cd3709befbbac1a6aaaf0fd9acf7f28" shape="plaintext"];
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" -> "sha256:6fa4769440b49294124efeec3f5e40bd869be1443c9b6a1d53bfdb66463a7b68" [label=""];
  "sha256:6fa4769440b49294124efeec3f5e40bd869be1443c9b6a1d53bfdb66463a7b68" -> "sha256:c779724f449cfa7e8e2e4a4221db239f6f17fed1d8126d05e5506e138cae4e12" [label=""];
  "sha256:c779724f449cfa7e8e2e4a4221db239f6f17fed1d8126d05e5506e138cae4e12" -> "sha256:e61e1d4dea3398ef3b3aae93ad1ad494c5a58d6a04bca6c05ae2392dca90f453" [label=""];
  "sha256:e61e1d4dea3398ef3b3aae93ad1ad494c5a58d6a04bca6c05ae2392dca90f453" -> "sha256:961865a186c71600ccf517e7a40a562fbc9f457873577c6ec148fb7ebfeed8a0" [label=""];
  "sha256:961865a186c71600ccf517e7a40a562fbc9f457873577c6ec148fb7ebfeed8a0" -> "sha256:ab3f4e27ae38485ca473210bdf8fa4e34cd3709befbbac1a6aaaf0fd9acf7f28" [label=""];
}

