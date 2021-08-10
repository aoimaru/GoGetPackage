[app/sources/213736332.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:382d59645c5889600c9cb01b582356fd0ba11aa54bd0fb22469596df91e3d389" [label="/bin/sh -c curl https://deb.nodesource.com/node_0.12/pool/main/n/nodejs/nodejs_0.12.6-1nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:1ec3bc305ff86000c13e3c643834ab504c720817e06e98e2f157847af1a8cb06" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:a1aedf547d48202b694e137167196a720025d805249f703066b9c611a5e93043" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e03cbd77f8bd3d993df7725df4a99adae835157d90c76c1e66f4a2ee1290c8de" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:39830350c84e137db49e547cac6bd09358e0fc43b29532fefb10b682896610de" [label="sha256:39830350c84e137db49e547cac6bd09358e0fc43b29532fefb10b682896610de" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:382d59645c5889600c9cb01b582356fd0ba11aa54bd0fb22469596df91e3d389" [label=""];
  "sha256:382d59645c5889600c9cb01b582356fd0ba11aa54bd0fb22469596df91e3d389" -> "sha256:1ec3bc305ff86000c13e3c643834ab504c720817e06e98e2f157847af1a8cb06" [label=""];
  "sha256:1ec3bc305ff86000c13e3c643834ab504c720817e06e98e2f157847af1a8cb06" -> "sha256:a1aedf547d48202b694e137167196a720025d805249f703066b9c611a5e93043" [label=""];
  "sha256:a1aedf547d48202b694e137167196a720025d805249f703066b9c611a5e93043" -> "sha256:e03cbd77f8bd3d993df7725df4a99adae835157d90c76c1e66f4a2ee1290c8de" [label=""];
  "sha256:e03cbd77f8bd3d993df7725df4a99adae835157d90c76c1e66f4a2ee1290c8de" -> "sha256:39830350c84e137db49e547cac6bd09358e0fc43b29532fefb10b682896610de" [label=""];
}

