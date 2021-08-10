[app/sources/213736558.Dockerfile]
digraph {
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" [label="docker-image://docker.io/nodesource/vivid-base:latest" shape="ellipse"];
  "sha256:c471b8c2ab8127e755c1f60d5c4f6efdf3a1751fdb0954f6057ce81ffeb96c28" [label="/bin/sh -c curl https://deb.nodesource.com/node_5.x/pool/main/n/nodejs/nodejs_5.1.0-2nodesource1~vivid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:26f1694fab5b853e5f631d75f3e3b4611ab1e86d7fa42f453987c844cff067b8" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:7efb3bbc2c69b20329c0aeebb603cb499c7b36c0eef233d2118d26e77a264ab5" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:118f5ff710b6a4f90de2ac8eca50769aba5cad4323ef7fd5912042458298d569" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:037ad78829cd6d3084b7cedaf90012647d344c23aab71ed4edd252d0ed4d9fc9" [label="sha256:037ad78829cd6d3084b7cedaf90012647d344c23aab71ed4edd252d0ed4d9fc9" shape="plaintext"];
  "sha256:0fe0c25e9f7ef38f3507ac32ba6fbb8b15bf7ff0e62038d43deec1c6b8869745" -> "sha256:c471b8c2ab8127e755c1f60d5c4f6efdf3a1751fdb0954f6057ce81ffeb96c28" [label=""];
  "sha256:c471b8c2ab8127e755c1f60d5c4f6efdf3a1751fdb0954f6057ce81ffeb96c28" -> "sha256:26f1694fab5b853e5f631d75f3e3b4611ab1e86d7fa42f453987c844cff067b8" [label=""];
  "sha256:26f1694fab5b853e5f631d75f3e3b4611ab1e86d7fa42f453987c844cff067b8" -> "sha256:7efb3bbc2c69b20329c0aeebb603cb499c7b36c0eef233d2118d26e77a264ab5" [label=""];
  "sha256:7efb3bbc2c69b20329c0aeebb603cb499c7b36c0eef233d2118d26e77a264ab5" -> "sha256:118f5ff710b6a4f90de2ac8eca50769aba5cad4323ef7fd5912042458298d569" [label=""];
  "sha256:118f5ff710b6a4f90de2ac8eca50769aba5cad4323ef7fd5912042458298d569" -> "sha256:037ad78829cd6d3084b7cedaf90012647d344c23aab71ed4edd252d0ed4d9fc9" [label=""];
}

