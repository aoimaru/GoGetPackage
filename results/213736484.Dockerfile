[app/sources/213736484.Dockerfile]
digraph {
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" [label="docker-image://docker.io/nodesource/vivid-base:latest" shape="ellipse"];
  "sha256:cbbb76755e1354c2ccbe9e59821a6cf05b8b301af165f16b9851667c4037a5e5" [label="/bin/sh -c curl https://deb.nodesource.com/node/pool/main/n/nodejs/nodejs_0.10.38-1chl1~vivid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:c202b456ccb2b015c238dc6181bc9a7eb87fcb22bbf88c88f8192c2d788dee86" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:996f499ff45fdcf680d708636abfd492118fdee063912ce9ce0f77cab3d4e4a2" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:332eddffb7cd46b5d8cffe775061d952b7bc7b7f5ddcfac9d217295de6810d76" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:ec200390bf02abdf659144eb0a6b7fc2c135af1ee61974520966b301e6324c3f" [label="sha256:ec200390bf02abdf659144eb0a6b7fc2c135af1ee61974520966b301e6324c3f" shape="plaintext"];
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" -> "sha256:cbbb76755e1354c2ccbe9e59821a6cf05b8b301af165f16b9851667c4037a5e5" [label=""];
  "sha256:cbbb76755e1354c2ccbe9e59821a6cf05b8b301af165f16b9851667c4037a5e5" -> "sha256:c202b456ccb2b015c238dc6181bc9a7eb87fcb22bbf88c88f8192c2d788dee86" [label=""];
  "sha256:c202b456ccb2b015c238dc6181bc9a7eb87fcb22bbf88c88f8192c2d788dee86" -> "sha256:996f499ff45fdcf680d708636abfd492118fdee063912ce9ce0f77cab3d4e4a2" [label=""];
  "sha256:996f499ff45fdcf680d708636abfd492118fdee063912ce9ce0f77cab3d4e4a2" -> "sha256:332eddffb7cd46b5d8cffe775061d952b7bc7b7f5ddcfac9d217295de6810d76" [label=""];
  "sha256:332eddffb7cd46b5d8cffe775061d952b7bc7b7f5ddcfac9d217295de6810d76" -> "sha256:ec200390bf02abdf659144eb0a6b7fc2c135af1ee61974520966b301e6324c3f" [label=""];
}

