[app/sources/213735156.Dockerfile]
digraph {
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" [label="docker-image://docker.io/nodesource/sid-base:latest" shape="ellipse"];
  "sha256:398dcdd865919b9534b066ce68d47eef48b77e297ab59a075c9e00c08fd7087f" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_1.x/pool/main/i/iojs/iojs_1.4.2-1nodesource1~sid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:27b96717985df02b7baa55287790d673a1e9d2a3a49c743bab41677388a01fde" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:cddd1b117ca15de6428b72c95ca0b7bb07997d2f1f714044d53e20234fd7998c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7f015d7cced64b9b7f4845d2d4b470d93b78bdb27f70b5c5731bfbcb061ca4e1" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:0426ce4203e62ea5f081dc5d55cb7d86b36c44992c1a647fc13d2d21d374a8f6" [label="sha256:0426ce4203e62ea5f081dc5d55cb7d86b36c44992c1a647fc13d2d21d374a8f6" shape="plaintext"];
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" -> "sha256:398dcdd865919b9534b066ce68d47eef48b77e297ab59a075c9e00c08fd7087f" [label=""];
  "sha256:398dcdd865919b9534b066ce68d47eef48b77e297ab59a075c9e00c08fd7087f" -> "sha256:27b96717985df02b7baa55287790d673a1e9d2a3a49c743bab41677388a01fde" [label=""];
  "sha256:27b96717985df02b7baa55287790d673a1e9d2a3a49c743bab41677388a01fde" -> "sha256:cddd1b117ca15de6428b72c95ca0b7bb07997d2f1f714044d53e20234fd7998c" [label=""];
  "sha256:cddd1b117ca15de6428b72c95ca0b7bb07997d2f1f714044d53e20234fd7998c" -> "sha256:7f015d7cced64b9b7f4845d2d4b470d93b78bdb27f70b5c5731bfbcb061ca4e1" [label=""];
  "sha256:7f015d7cced64b9b7f4845d2d4b470d93b78bdb27f70b5c5731bfbcb061ca4e1" -> "sha256:0426ce4203e62ea5f081dc5d55cb7d86b36c44992c1a647fc13d2d21d374a8f6" [label=""];
}

