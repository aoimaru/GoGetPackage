[app/sources/213736244.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:2220532e56bba9d51a01096e8da1b04dcd2d4eff62f574514534e77e8473e782" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_2.x/pool/main/i/iojs/iojs_2.0.1-1nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:d5b4376dcc89720a991c44cec48b55cf4c86cf0bdf8ad8ef2e1553bccd342561" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:a4fad3e5ac50cfa959f10fcb55f0752d5a65bf4d001e3bfc7c516fa1513b2d2c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:43c6ebb64a59aaa668e98b71335f0f408b58e426816409989818fa424bd9b5a4" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:634ebd0a77ea9a29e7687299f05c378fd34adc88c915b956616c01e9dccf4883" [label="sha256:634ebd0a77ea9a29e7687299f05c378fd34adc88c915b956616c01e9dccf4883" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:2220532e56bba9d51a01096e8da1b04dcd2d4eff62f574514534e77e8473e782" [label=""];
  "sha256:2220532e56bba9d51a01096e8da1b04dcd2d4eff62f574514534e77e8473e782" -> "sha256:d5b4376dcc89720a991c44cec48b55cf4c86cf0bdf8ad8ef2e1553bccd342561" [label=""];
  "sha256:d5b4376dcc89720a991c44cec48b55cf4c86cf0bdf8ad8ef2e1553bccd342561" -> "sha256:a4fad3e5ac50cfa959f10fcb55f0752d5a65bf4d001e3bfc7c516fa1513b2d2c" [label=""];
  "sha256:a4fad3e5ac50cfa959f10fcb55f0752d5a65bf4d001e3bfc7c516fa1513b2d2c" -> "sha256:43c6ebb64a59aaa668e98b71335f0f408b58e426816409989818fa424bd9b5a4" [label=""];
  "sha256:43c6ebb64a59aaa668e98b71335f0f408b58e426816409989818fa424bd9b5a4" -> "sha256:634ebd0a77ea9a29e7687299f05c378fd34adc88c915b956616c01e9dccf4883" [label=""];
}

