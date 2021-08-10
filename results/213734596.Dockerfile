[app/sources/213734596.Dockerfile]
digraph {
  "sha256:316ba43480d257d0c8d0dc419edcdd885e5bfab03abcdcdd100087e66e7597be" [label="docker-image://docker.io/nodesource/centos5-base:latest" shape="ellipse"];
  "sha256:f26430e981d2f143c5ea57e429668827332551742ffbf575ac91447b4919ec71" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub/el/5/x86_64/nodejs-0.10.41-1nodesource.el5.centos.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:4a4a72249d8abe67ab113082f5d106e163af1f837bcd477553afcf4014635570" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:6ab557cc7d12c5ec6160d0febd881687cccb7ec046e40a0da1b7c1d6b182d82a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a6cf87d9ad73311b568faed29ec9f40350e700c02a9e66e69fec88682fd9fe59" [label="sha256:a6cf87d9ad73311b568faed29ec9f40350e700c02a9e66e69fec88682fd9fe59" shape="plaintext"];
  "sha256:316ba43480d257d0c8d0dc419edcdd885e5bfab03abcdcdd100087e66e7597be" -> "sha256:f26430e981d2f143c5ea57e429668827332551742ffbf575ac91447b4919ec71" [label=""];
  "sha256:f26430e981d2f143c5ea57e429668827332551742ffbf575ac91447b4919ec71" -> "sha256:4a4a72249d8abe67ab113082f5d106e163af1f837bcd477553afcf4014635570" [label=""];
  "sha256:4a4a72249d8abe67ab113082f5d106e163af1f837bcd477553afcf4014635570" -> "sha256:6ab557cc7d12c5ec6160d0febd881687cccb7ec046e40a0da1b7c1d6b182d82a" [label=""];
  "sha256:6ab557cc7d12c5ec6160d0febd881687cccb7ec046e40a0da1b7c1d6b182d82a" -> "sha256:a6cf87d9ad73311b568faed29ec9f40350e700c02a9e66e69fec88682fd9fe59" [label=""];
}

