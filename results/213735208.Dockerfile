[app/sources/213735208.Dockerfile]
digraph {
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" [label="docker-image://docker.io/nodesource/sid-base:latest" shape="ellipse"];
  "sha256:51ee3afa96bb35331aec3478c29fca343b878bd50c32bc7e5d9301134937b79d" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_3.x/pool/main/i/iojs/iojs_3.2.0-1nodesource1~sid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:2a67764e6a0002199fddfba28556a0241b80feb5156bbe6cceb116ca3b8a05c4" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:3b07dcdbc3f467ceb6221f15fe2719e4dc0d8bcceee62bb6617b73afd7817224" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8aa9ba5ca7b1ecf2ae7982691f0c53ad5c6acca795d1b12f1d2c4d294b25ff7e" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:430f41a23b5e42d18c04a723dd726510af1793d0e328e1b550545407bea38046" [label="sha256:430f41a23b5e42d18c04a723dd726510af1793d0e328e1b550545407bea38046" shape="plaintext"];
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" -> "sha256:51ee3afa96bb35331aec3478c29fca343b878bd50c32bc7e5d9301134937b79d" [label=""];
  "sha256:51ee3afa96bb35331aec3478c29fca343b878bd50c32bc7e5d9301134937b79d" -> "sha256:2a67764e6a0002199fddfba28556a0241b80feb5156bbe6cceb116ca3b8a05c4" [label=""];
  "sha256:2a67764e6a0002199fddfba28556a0241b80feb5156bbe6cceb116ca3b8a05c4" -> "sha256:3b07dcdbc3f467ceb6221f15fe2719e4dc0d8bcceee62bb6617b73afd7817224" [label=""];
  "sha256:3b07dcdbc3f467ceb6221f15fe2719e4dc0d8bcceee62bb6617b73afd7817224" -> "sha256:8aa9ba5ca7b1ecf2ae7982691f0c53ad5c6acca795d1b12f1d2c4d294b25ff7e" [label=""];
  "sha256:8aa9ba5ca7b1ecf2ae7982691f0c53ad5c6acca795d1b12f1d2c4d294b25ff7e" -> "sha256:430f41a23b5e42d18c04a723dd726510af1793d0e328e1b550545407bea38046" [label=""];
}

