[app/sources/213736498.Dockerfile]
digraph {
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" [label="docker-image://docker.io/nodesource/vivid-base:latest" shape="ellipse"];
  "sha256:5842c053b1310c0dc0ab63bdd14eb76f1d3c30491e407fa11f1d9d5e633d2746" [label="/bin/sh -c curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.10-1nodesource1~vivid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:2e6b465544d6c6318bc357da45fbe7003737d353ed4bb68d2f97c9ec19e0111b" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:edaff3c3f17225d0797b0eb046b1c609795aa4c37751b41c66aae41f42cbdf22" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c8ef890a529cec8170bb4aae8a543b5e701f4610e378ff8e1885c02e679ac8cf" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:5359a6617d50a45c1bc8f78807df02e977ddea432816e0cd385f4223e8d35212" [label="sha256:5359a6617d50a45c1bc8f78807df02e977ddea432816e0cd385f4223e8d35212" shape="plaintext"];
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" -> "sha256:5842c053b1310c0dc0ab63bdd14eb76f1d3c30491e407fa11f1d9d5e633d2746" [label=""];
  "sha256:5842c053b1310c0dc0ab63bdd14eb76f1d3c30491e407fa11f1d9d5e633d2746" -> "sha256:2e6b465544d6c6318bc357da45fbe7003737d353ed4bb68d2f97c9ec19e0111b" [label=""];
  "sha256:2e6b465544d6c6318bc357da45fbe7003737d353ed4bb68d2f97c9ec19e0111b" -> "sha256:edaff3c3f17225d0797b0eb046b1c609795aa4c37751b41c66aae41f42cbdf22" [label=""];
  "sha256:edaff3c3f17225d0797b0eb046b1c609795aa4c37751b41c66aae41f42cbdf22" -> "sha256:c8ef890a529cec8170bb4aae8a543b5e701f4610e378ff8e1885c02e679ac8cf" [label=""];
  "sha256:c8ef890a529cec8170bb4aae8a543b5e701f4610e378ff8e1885c02e679ac8cf" -> "sha256:5359a6617d50a45c1bc8f78807df02e977ddea432816e0cd385f4223e8d35212" [label=""];
}

