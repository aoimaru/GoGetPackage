[app/sources/213735300.Dockerfile]
digraph {
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" [label="docker-image://docker.io/nodesource/sid-base:latest" shape="ellipse"];
  "sha256:34161a849531445d04d10e8f859402b592723500d36479ee35c1b8bd0b1f8858" [label="/bin/sh -c curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.3.0-1nodesource1~sid1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:cdee8c3d54abe0887f80d3e630f3a605a3111d56dec2dfa10d1e5a5030484ffe" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:8fa26f47384dd83bf59d6d792ba7c77226284593b77291357a1f7d45dee8de64" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e8245a4e6653c4acea5d36eed4f9999d4a21b6ca23d204fe1f9e95d04f96bce4" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:b99c705c81e1f8305a4009646fdb238f8149161f9f26b1b8b56552e61c231c0c" [label="sha256:b99c705c81e1f8305a4009646fdb238f8149161f9f26b1b8b56552e61c231c0c" shape="plaintext"];
  "sha256:c06f95b99e67ed07af28914a13e136ca35d706abf7a0b55b9d7b510029d9e623" -> "sha256:34161a849531445d04d10e8f859402b592723500d36479ee35c1b8bd0b1f8858" [label=""];
  "sha256:34161a849531445d04d10e8f859402b592723500d36479ee35c1b8bd0b1f8858" -> "sha256:cdee8c3d54abe0887f80d3e630f3a605a3111d56dec2dfa10d1e5a5030484ffe" [label=""];
  "sha256:cdee8c3d54abe0887f80d3e630f3a605a3111d56dec2dfa10d1e5a5030484ffe" -> "sha256:8fa26f47384dd83bf59d6d792ba7c77226284593b77291357a1f7d45dee8de64" [label=""];
  "sha256:8fa26f47384dd83bf59d6d792ba7c77226284593b77291357a1f7d45dee8de64" -> "sha256:e8245a4e6653c4acea5d36eed4f9999d4a21b6ca23d204fe1f9e95d04f96bce4" [label=""];
  "sha256:e8245a4e6653c4acea5d36eed4f9999d4a21b6ca23d204fe1f9e95d04f96bce4" -> "sha256:b99c705c81e1f8305a4009646fdb238f8149161f9f26b1b8b56552e61c231c0c" [label=""];
}

