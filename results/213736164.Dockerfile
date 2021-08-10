[app/sources/213736164.Dockerfile]
digraph {
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" [label="docker-image://docker.io/nodesource/precise-base:latest" shape="ellipse"];
  "sha256:195895998fdc6a83c0e13d4c9ad58bd9781de49f5f3322b36f51e550f40f1fd4" [label="/bin/sh -c curl https://deb.nodesource.com/node_5.x/pool/main/n/nodejs/nodejs_5.10.0-1nodesource1~precise1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:733fc1c0756ffad29cb1fd01f7c425b5b7c7424b1843869a315f88a515d44183" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:d0b9671b190bc5873c49d20d338181600142463dcbe4a293dc167bf7bdb7cb02" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:12afd022e6bcca168298bdd6ae05ac873af8c48befe93f3d3de8306591df0380" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:dd8171ff04bb0a743f2dafd3f11197ef5367e2b46265efec2141f6051f261f45" [label="sha256:dd8171ff04bb0a743f2dafd3f11197ef5367e2b46265efec2141f6051f261f45" shape="plaintext"];
  "sha256:52bfaad1c3b17b4bcaad95f6f23921fb2227a78083d34079d0f55e643bee6b59" -> "sha256:195895998fdc6a83c0e13d4c9ad58bd9781de49f5f3322b36f51e550f40f1fd4" [label=""];
  "sha256:195895998fdc6a83c0e13d4c9ad58bd9781de49f5f3322b36f51e550f40f1fd4" -> "sha256:733fc1c0756ffad29cb1fd01f7c425b5b7c7424b1843869a315f88a515d44183" [label=""];
  "sha256:733fc1c0756ffad29cb1fd01f7c425b5b7c7424b1843869a315f88a515d44183" -> "sha256:d0b9671b190bc5873c49d20d338181600142463dcbe4a293dc167bf7bdb7cb02" [label=""];
  "sha256:d0b9671b190bc5873c49d20d338181600142463dcbe4a293dc167bf7bdb7cb02" -> "sha256:12afd022e6bcca168298bdd6ae05ac873af8c48befe93f3d3de8306591df0380" [label=""];
  "sha256:12afd022e6bcca168298bdd6ae05ac873af8c48befe93f3d3de8306591df0380" -> "sha256:dd8171ff04bb0a743f2dafd3f11197ef5367e2b46265efec2141f6051f261f45" [label=""];
}

