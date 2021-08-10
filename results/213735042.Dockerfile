[app/sources/213735042.Dockerfile]
digraph {
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" [label="docker-image://docker.io/nodesource/jessie-base:latest" shape="ellipse"];
  "sha256:64ee04f03f650a9caa95e0a672a8215e1efda373f4be1bfd0cd3c0d011261fa3" [label="/bin/sh -c curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.8-1nodesource1~jessie1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:05df5579666788c799c400284164dd2da7a4fc5eec0141a5c29fff7512f06ab9" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:9afa29deb8dac8dfcfb6baaa7172403d38a9ceb494e8f028ccca70e6f0c97929" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:08313af963f4d990c08a403c412500813040a508e6f436274301d4183c71e68a" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:788902adf5a661e8a811f3fd6e8c19696774cee88a6a1a808f5ce2e5052f10cf" [label="sha256:788902adf5a661e8a811f3fd6e8c19696774cee88a6a1a808f5ce2e5052f10cf" shape="plaintext"];
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" -> "sha256:64ee04f03f650a9caa95e0a672a8215e1efda373f4be1bfd0cd3c0d011261fa3" [label=""];
  "sha256:64ee04f03f650a9caa95e0a672a8215e1efda373f4be1bfd0cd3c0d011261fa3" -> "sha256:05df5579666788c799c400284164dd2da7a4fc5eec0141a5c29fff7512f06ab9" [label=""];
  "sha256:05df5579666788c799c400284164dd2da7a4fc5eec0141a5c29fff7512f06ab9" -> "sha256:9afa29deb8dac8dfcfb6baaa7172403d38a9ceb494e8f028ccca70e6f0c97929" [label=""];
  "sha256:9afa29deb8dac8dfcfb6baaa7172403d38a9ceb494e8f028ccca70e6f0c97929" -> "sha256:08313af963f4d990c08a403c412500813040a508e6f436274301d4183c71e68a" [label=""];
  "sha256:08313af963f4d990c08a403c412500813040a508e6f436274301d4183c71e68a" -> "sha256:788902adf5a661e8a811f3fd6e8c19696774cee88a6a1a808f5ce2e5052f10cf" [label=""];
}

