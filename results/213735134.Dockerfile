[app/sources/213735134.Dockerfile]
digraph {
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" [label="docker-image://docker.io/nodesource/jessie-base:latest" shape="ellipse"];
  "sha256:570722df86ae65dd53eb527c654369885630eb2296d07ce9d95c7caf9f4ea51c" [label="/bin/sh -c curl https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/nodejs_6.1.0-1nodesource1~jessie1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:bc8a56cda4deeb492c8a96678905df3b1e09e19db4f190b251e015f163e53885" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:bc80c5f4a926db812bdb4d5ee13c817a176f670517f05074c809417b42b594e7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:681c2d026fb95a771d18b715f3068b15ec8aced097c99fcefca32792f91587dd" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:bf661544fc2897b38b88e8ad6bb4677788b7902fc160f61019ae12f072c1e186" [label="sha256:bf661544fc2897b38b88e8ad6bb4677788b7902fc160f61019ae12f072c1e186" shape="plaintext"];
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" -> "sha256:570722df86ae65dd53eb527c654369885630eb2296d07ce9d95c7caf9f4ea51c" [label=""];
  "sha256:570722df86ae65dd53eb527c654369885630eb2296d07ce9d95c7caf9f4ea51c" -> "sha256:bc8a56cda4deeb492c8a96678905df3b1e09e19db4f190b251e015f163e53885" [label=""];
  "sha256:bc8a56cda4deeb492c8a96678905df3b1e09e19db4f190b251e015f163e53885" -> "sha256:bc80c5f4a926db812bdb4d5ee13c817a176f670517f05074c809417b42b594e7" [label=""];
  "sha256:bc80c5f4a926db812bdb4d5ee13c817a176f670517f05074c809417b42b594e7" -> "sha256:681c2d026fb95a771d18b715f3068b15ec8aced097c99fcefca32792f91587dd" [label=""];
  "sha256:681c2d026fb95a771d18b715f3068b15ec8aced097c99fcefca32792f91587dd" -> "sha256:bf661544fc2897b38b88e8ad6bb4677788b7902fc160f61019ae12f072c1e186" [label=""];
}

