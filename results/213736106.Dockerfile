[app/sources/213736106.Dockerfile]
digraph {
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" [label="docker-image://docker.io/nodesource/precise-base:latest" shape="ellipse"];
  "sha256:1f40fb4e14a5fdd2828e9d98cf6fdfdb547f280c9555374ace6ecbda560ab744" [label="/bin/sh -c curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.6-1nodesource1~precise1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:cc7a91e967a8f9ab39d7eb57857d8c097a7c1895576b7547c88bfd5ea908bc47" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:0b4d62b0dbc33ff6e7c8d00f9155bd7b88e5a60554ff9d3e189a7404d19146d9" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:4a11f8459a4efe5c4a0ad018ff56f366b16450287805440b67bbb9e9b40e70cf" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:b9a95a4c5be8aab225baa41045e6737d3df6396e471c71d67e35d80a230d24f0" [label="sha256:b9a95a4c5be8aab225baa41045e6737d3df6396e471c71d67e35d80a230d24f0" shape="plaintext"];
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" -> "sha256:1f40fb4e14a5fdd2828e9d98cf6fdfdb547f280c9555374ace6ecbda560ab744" [label=""];
  "sha256:1f40fb4e14a5fdd2828e9d98cf6fdfdb547f280c9555374ace6ecbda560ab744" -> "sha256:cc7a91e967a8f9ab39d7eb57857d8c097a7c1895576b7547c88bfd5ea908bc47" [label=""];
  "sha256:cc7a91e967a8f9ab39d7eb57857d8c097a7c1895576b7547c88bfd5ea908bc47" -> "sha256:0b4d62b0dbc33ff6e7c8d00f9155bd7b88e5a60554ff9d3e189a7404d19146d9" [label=""];
  "sha256:0b4d62b0dbc33ff6e7c8d00f9155bd7b88e5a60554ff9d3e189a7404d19146d9" -> "sha256:4a11f8459a4efe5c4a0ad018ff56f366b16450287805440b67bbb9e9b40e70cf" [label=""];
  "sha256:4a11f8459a4efe5c4a0ad018ff56f366b16450287805440b67bbb9e9b40e70cf" -> "sha256:b9a95a4c5be8aab225baa41045e6737d3df6396e471c71d67e35d80a230d24f0" [label=""];
}

