[app/sources/334857602.Dockerfile]
digraph {
  "sha256:7d426881dcd9cc130601324f668d7a44734ac521ec1672c3720d07aa5dced910" [label="docker-image://docker.io/controlplane/gcloud-sdk:latest" shape="ellipse"];
  "sha256:22ebb1236f2c18fb148ca46b3f0a753dedcbcc82cbe36685a7a6e747ba789fc3" [label="mkdir{path=/code}" shape="note"];
  "sha256:975ba1af68370af6eec9313ba4f46379867e0d05c2ef9882c9316febb18d13c9" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive     apt update && apt install --assume-yes --no-install-recommends       bash       ca-certificates       curl       nodejs       node-gyp       libnode-dev       npm       nmap       jq       parallel       ssh       wget     && rm -rf /var/lib/apt/lists/*     && ARCH=\"$(dpkg --print-architecture | awk -F- '{ print $NF }')\"     && wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${ARCH}\"   && chmod +x /usr/local/bin/gosu   && gosu nobody true" shape="box"];
  "sha256:26100f6fab5fc2a8f2d387a97f5d14c3d8ba8c527be754b9eb5c13df0c836726" [label="/bin/sh -c adduser     --shell /bin/bash     --uid 30000     --gecos \"\"     --disabled-password     netassert   &&   CACHE_DIR=/code/node_modules/.cache   && mkdir -p \"${CACHE_DIR}\"   && chown netassert -R \"${CACHE_DIR}\"" shape="box"];
  "sha256:5078da8e9fe63159052d29cf2d64b7f14cc7036f9bd4f616b321e2550317432c" [label="local://context" shape="ellipse"];
  "sha256:5d5d740342212edea8958d95d9bad7de3381c02a275345febc5da5e0f23966fe" [label="copy{src=/package.json, dest=/code/}" shape="note"];
  "sha256:6d5ae096f8db0e3e1a3b55e5a19063c39cab050155829bba7a90e6754ee71dd2" [label="/bin/sh -c npm install" shape="box"];
  "sha256:44ac4ecd1d8b07aee7988b202c7bf00a8538778932cb2f343d02a3d7cd6034b3" [label="copy{src=/test, dest=/code/test/}" shape="note"];
  "sha256:c656dfde89df297ac38d59b74310f71661a7d7a67726ef477483c56202e71b72" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/},copy{src=/yj, dest=/usr/local/bin/},copy{src=/netassert, dest=/usr/local/bin/}" shape="note"];
  "sha256:9c83146561eb9e1dd004dbb6017056b6427e08ebf1c6919041fa46dd6898e500" [label="sha256:9c83146561eb9e1dd004dbb6017056b6427e08ebf1c6919041fa46dd6898e500" shape="plaintext"];
  "sha256:7d426881dcd9cc130601324f668d7a44734ac521ec1672c3720d07aa5dced910" -> "sha256:22ebb1236f2c18fb148ca46b3f0a753dedcbcc82cbe36685a7a6e747ba789fc3" [label=""];
  "sha256:22ebb1236f2c18fb148ca46b3f0a753dedcbcc82cbe36685a7a6e747ba789fc3" -> "sha256:975ba1af68370af6eec9313ba4f46379867e0d05c2ef9882c9316febb18d13c9" [label=""];
  "sha256:975ba1af68370af6eec9313ba4f46379867e0d05c2ef9882c9316febb18d13c9" -> "sha256:26100f6fab5fc2a8f2d387a97f5d14c3d8ba8c527be754b9eb5c13df0c836726" [label=""];
  "sha256:26100f6fab5fc2a8f2d387a97f5d14c3d8ba8c527be754b9eb5c13df0c836726" -> "sha256:5d5d740342212edea8958d95d9bad7de3381c02a275345febc5da5e0f23966fe" [label=""];
  "sha256:5078da8e9fe63159052d29cf2d64b7f14cc7036f9bd4f616b321e2550317432c" -> "sha256:5d5d740342212edea8958d95d9bad7de3381c02a275345febc5da5e0f23966fe" [label=""];
  "sha256:5d5d740342212edea8958d95d9bad7de3381c02a275345febc5da5e0f23966fe" -> "sha256:6d5ae096f8db0e3e1a3b55e5a19063c39cab050155829bba7a90e6754ee71dd2" [label=""];
  "sha256:6d5ae096f8db0e3e1a3b55e5a19063c39cab050155829bba7a90e6754ee71dd2" -> "sha256:44ac4ecd1d8b07aee7988b202c7bf00a8538778932cb2f343d02a3d7cd6034b3" [label=""];
  "sha256:5078da8e9fe63159052d29cf2d64b7f14cc7036f9bd4f616b321e2550317432c" -> "sha256:44ac4ecd1d8b07aee7988b202c7bf00a8538778932cb2f343d02a3d7cd6034b3" [label=""];
  "sha256:44ac4ecd1d8b07aee7988b202c7bf00a8538778932cb2f343d02a3d7cd6034b3" -> "sha256:c656dfde89df297ac38d59b74310f71661a7d7a67726ef477483c56202e71b72" [label=""];
  "sha256:5078da8e9fe63159052d29cf2d64b7f14cc7036f9bd4f616b321e2550317432c" -> "sha256:c656dfde89df297ac38d59b74310f71661a7d7a67726ef477483c56202e71b72" [label=""];
  "sha256:c656dfde89df297ac38d59b74310f71661a7d7a67726ef477483c56202e71b72" -> "sha256:9c83146561eb9e1dd004dbb6017056b6427e08ebf1c6919041fa46dd6898e500" [label=""];
}

