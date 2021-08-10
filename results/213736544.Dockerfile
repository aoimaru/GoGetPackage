[app/sources/213736544.Dockerfile]
digraph {
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" [label="docker-image://docker.io/nodesource/vivid-base:latest" shape="ellipse"];
  "sha256:4c139539b3603e42fc38a40880a3b49c5def9e4e84a6f351eb409f645d0614e2" [label="/bin/sh -c curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.3.0-1nodesource1~vivid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:e741f94a0051a79f312df578ebe01bdea40ae9d361ba9bdf7b61a6e9fbcd2c44" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:baa8400d841170394f5af25046e48c5225a487ef8c03a62dfdcbae60e310e81f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ab12c238c3663498b89f436eb0efca200abb10181a74f14c773ec7130dd4b408" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:5c57b0f3542c193a2bc90be407981b77ed21e0bc75a279c0f240fb4409de9d88" [label="sha256:5c57b0f3542c193a2bc90be407981b77ed21e0bc75a279c0f240fb4409de9d88" shape="plaintext"];
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" -> "sha256:4c139539b3603e42fc38a40880a3b49c5def9e4e84a6f351eb409f645d0614e2" [label=""];
  "sha256:4c139539b3603e42fc38a40880a3b49c5def9e4e84a6f351eb409f645d0614e2" -> "sha256:e741f94a0051a79f312df578ebe01bdea40ae9d361ba9bdf7b61a6e9fbcd2c44" [label=""];
  "sha256:e741f94a0051a79f312df578ebe01bdea40ae9d361ba9bdf7b61a6e9fbcd2c44" -> "sha256:baa8400d841170394f5af25046e48c5225a487ef8c03a62dfdcbae60e310e81f" [label=""];
  "sha256:baa8400d841170394f5af25046e48c5225a487ef8c03a62dfdcbae60e310e81f" -> "sha256:ab12c238c3663498b89f436eb0efca200abb10181a74f14c773ec7130dd4b408" [label=""];
  "sha256:ab12c238c3663498b89f436eb0efca200abb10181a74f14c773ec7130dd4b408" -> "sha256:5c57b0f3542c193a2bc90be407981b77ed21e0bc75a279c0f240fb4409de9d88" [label=""];
}

