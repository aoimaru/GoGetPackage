[app/sources/213735020.Dockerfile]
digraph {
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" [label="docker-image://docker.io/nodesource/jessie-base:latest" shape="ellipse"];
  "sha256:52744c6b097d4580615f2aff65925b70183bca7c263fa9cb9f22bd8e816d455e" [label="/bin/sh -c curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.12-1nodesource1~jessie1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:839657118e1343f5cff3f38d412445c7614d70c55c678b1e87b6effd97b3bb18" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:2ef608b2c556ebcef577bfc544eadb42e939a8b063561f98ac631b3e0336b857" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:1660b5bb75381bf311c491bdbdcb0579d1c72e10ea19e6a08a7cafc257ee5785" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:8764ea1808ea85c12a32a781769d4a9e8b7b279afbf5cd5bfb2d8977b149dde9" [label="sha256:8764ea1808ea85c12a32a781769d4a9e8b7b279afbf5cd5bfb2d8977b149dde9" shape="plaintext"];
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" -> "sha256:52744c6b097d4580615f2aff65925b70183bca7c263fa9cb9f22bd8e816d455e" [label=""];
  "sha256:52744c6b097d4580615f2aff65925b70183bca7c263fa9cb9f22bd8e816d455e" -> "sha256:839657118e1343f5cff3f38d412445c7614d70c55c678b1e87b6effd97b3bb18" [label=""];
  "sha256:839657118e1343f5cff3f38d412445c7614d70c55c678b1e87b6effd97b3bb18" -> "sha256:2ef608b2c556ebcef577bfc544eadb42e939a8b063561f98ac631b3e0336b857" [label=""];
  "sha256:2ef608b2c556ebcef577bfc544eadb42e939a8b063561f98ac631b3e0336b857" -> "sha256:1660b5bb75381bf311c491bdbdcb0579d1c72e10ea19e6a08a7cafc257ee5785" [label=""];
  "sha256:1660b5bb75381bf311c491bdbdcb0579d1c72e10ea19e6a08a7cafc257ee5785" -> "sha256:8764ea1808ea85c12a32a781769d4a9e8b7b279afbf5cd5bfb2d8977b149dde9" [label=""];
}

