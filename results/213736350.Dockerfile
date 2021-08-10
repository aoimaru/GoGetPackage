[app/sources/213736350.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:a29388ee625ee2cf84ad9fa550f0997bb4c9f879bb6815ffc1ab4be67ef2e133" [label="/bin/sh -c curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.2.1-2nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:3647931435e309a2ac89f0e7b8a532e4cab95d5ba8244e895b2ef6ecdd4f54d9" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:579acb68076317a6b2e6a3a1fe3aa31a36dfbd1673f746332036d03d62e3dc17" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:41ad65b097ff162ebe6e962c82b31d591fbf8adebf42bfd32b09fe090306bbbc" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:f20eedeb2d2b08adbcaab2d1941694af6bb9234ffa19b96931766c826add1e69" [label="sha256:f20eedeb2d2b08adbcaab2d1941694af6bb9234ffa19b96931766c826add1e69" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:a29388ee625ee2cf84ad9fa550f0997bb4c9f879bb6815ffc1ab4be67ef2e133" [label=""];
  "sha256:a29388ee625ee2cf84ad9fa550f0997bb4c9f879bb6815ffc1ab4be67ef2e133" -> "sha256:3647931435e309a2ac89f0e7b8a532e4cab95d5ba8244e895b2ef6ecdd4f54d9" [label=""];
  "sha256:3647931435e309a2ac89f0e7b8a532e4cab95d5ba8244e895b2ef6ecdd4f54d9" -> "sha256:579acb68076317a6b2e6a3a1fe3aa31a36dfbd1673f746332036d03d62e3dc17" [label=""];
  "sha256:579acb68076317a6b2e6a3a1fe3aa31a36dfbd1673f746332036d03d62e3dc17" -> "sha256:41ad65b097ff162ebe6e962c82b31d591fbf8adebf42bfd32b09fe090306bbbc" [label=""];
  "sha256:41ad65b097ff162ebe6e962c82b31d591fbf8adebf42bfd32b09fe090306bbbc" -> "sha256:f20eedeb2d2b08adbcaab2d1941694af6bb9234ffa19b96931766c826add1e69" [label=""];
}

