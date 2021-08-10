[app/sources/213736526.Dockerfile]
digraph {
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" [label="docker-image://docker.io/nodesource/vivid-base:latest" shape="ellipse"];
  "sha256:5210cb06e38676c76d2cbc630567fa624fb418d044f61123f1823ad1f01e06fb" [label="/bin/sh -c curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.1.1-1nodesource1~vivid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:d7d8f6904a15fb549c44022be92e9e3f57c229fe21f63e22211210e71bb3d01e" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:bc5e1430e429dd22a5671d143dd1fca4995151082c93c2c981222781a1d851d1" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:228834ed8633d98407d8dece8ef05d5de6c78d49a3bb727a5be81f1b0922c141" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:cb4b885ae9a5e7220e2c9f3135c4d5ebc1b105287e2d254ad2457a2b31368b2b" [label="sha256:cb4b885ae9a5e7220e2c9f3135c4d5ebc1b105287e2d254ad2457a2b31368b2b" shape="plaintext"];
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" -> "sha256:5210cb06e38676c76d2cbc630567fa624fb418d044f61123f1823ad1f01e06fb" [label=""];
  "sha256:5210cb06e38676c76d2cbc630567fa624fb418d044f61123f1823ad1f01e06fb" -> "sha256:d7d8f6904a15fb549c44022be92e9e3f57c229fe21f63e22211210e71bb3d01e" [label=""];
  "sha256:d7d8f6904a15fb549c44022be92e9e3f57c229fe21f63e22211210e71bb3d01e" -> "sha256:bc5e1430e429dd22a5671d143dd1fca4995151082c93c2c981222781a1d851d1" [label=""];
  "sha256:bc5e1430e429dd22a5671d143dd1fca4995151082c93c2c981222781a1d851d1" -> "sha256:228834ed8633d98407d8dece8ef05d5de6c78d49a3bb727a5be81f1b0922c141" [label=""];
  "sha256:228834ed8633d98407d8dece8ef05d5de6c78d49a3bb727a5be81f1b0922c141" -> "sha256:cb4b885ae9a5e7220e2c9f3135c4d5ebc1b105287e2d254ad2457a2b31368b2b" [label=""];
}

