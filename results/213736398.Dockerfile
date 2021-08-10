[app/sources/213736398.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:ab4833bd97757a9b326bc858a66e34ee7c4ab7dc734036074a94d9a6441fe869" [label="/bin/sh -c curl https://deb.nodesource.com/node_5.x/pool/main/n/nodejs/nodejs_5.11.0-1nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:f45568dd5b85be5b5020cbfcf2f33f92624b97d455410f2948c1610eb66d6e86" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:02e665a31a6fb0e6a43569ca88c29fb7a6a7c0c82e818acf5d942bfe8ad4daa7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:0ee1e3cf579e8be5015a9fffecddfbd2481b22858e67245bca450a0bd1f8809e" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:cc30dde5311e93c4b650ee5c44edf2f673f6d265b9eb464159f5d692b7703608" [label="sha256:cc30dde5311e93c4b650ee5c44edf2f673f6d265b9eb464159f5d692b7703608" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:ab4833bd97757a9b326bc858a66e34ee7c4ab7dc734036074a94d9a6441fe869" [label=""];
  "sha256:ab4833bd97757a9b326bc858a66e34ee7c4ab7dc734036074a94d9a6441fe869" -> "sha256:f45568dd5b85be5b5020cbfcf2f33f92624b97d455410f2948c1610eb66d6e86" [label=""];
  "sha256:f45568dd5b85be5b5020cbfcf2f33f92624b97d455410f2948c1610eb66d6e86" -> "sha256:02e665a31a6fb0e6a43569ca88c29fb7a6a7c0c82e818acf5d942bfe8ad4daa7" [label=""];
  "sha256:02e665a31a6fb0e6a43569ca88c29fb7a6a7c0c82e818acf5d942bfe8ad4daa7" -> "sha256:0ee1e3cf579e8be5015a9fffecddfbd2481b22858e67245bca450a0bd1f8809e" [label=""];
  "sha256:0ee1e3cf579e8be5015a9fffecddfbd2481b22858e67245bca450a0bd1f8809e" -> "sha256:cc30dde5311e93c4b650ee5c44edf2f673f6d265b9eb464159f5d692b7703608" [label=""];
}

