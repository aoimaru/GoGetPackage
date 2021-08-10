[app/sources/213736290.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:fb52f58ce61ebbd866a18a645c155e8647c542595ca97acddd4ea43e0b5cde3b" [label="/bin/sh -c curl https://deb.nodesource.com/node/pool/main/n/nodejs/nodejs_0.10.38-1chl1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:3220e0151d3e4b5a960ac4793544541cc0eec16c2dc57ade1fe82cb0dc480a8a" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:12a310631ac142c59e37de4d61ed910787a9c0c142aa3d4c8a4d3904517314f2" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:935771f20598131676b7a0b6f8d6773bc81ed4d7fa3f01a6107b1ee43111702f" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:7fafe6f2e9a2f5bbf5f5ccf42be0848499b9473ad8079c1ea3df997679a46b71" [label="sha256:7fafe6f2e9a2f5bbf5f5ccf42be0848499b9473ad8079c1ea3df997679a46b71" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:fb52f58ce61ebbd866a18a645c155e8647c542595ca97acddd4ea43e0b5cde3b" [label=""];
  "sha256:fb52f58ce61ebbd866a18a645c155e8647c542595ca97acddd4ea43e0b5cde3b" -> "sha256:3220e0151d3e4b5a960ac4793544541cc0eec16c2dc57ade1fe82cb0dc480a8a" [label=""];
  "sha256:3220e0151d3e4b5a960ac4793544541cc0eec16c2dc57ade1fe82cb0dc480a8a" -> "sha256:12a310631ac142c59e37de4d61ed910787a9c0c142aa3d4c8a4d3904517314f2" [label=""];
  "sha256:12a310631ac142c59e37de4d61ed910787a9c0c142aa3d4c8a4d3904517314f2" -> "sha256:935771f20598131676b7a0b6f8d6773bc81ed4d7fa3f01a6107b1ee43111702f" [label=""];
  "sha256:935771f20598131676b7a0b6f8d6773bc81ed4d7fa3f01a6107b1ee43111702f" -> "sha256:7fafe6f2e9a2f5bbf5f5ccf42be0848499b9473ad8079c1ea3df997679a46b71" [label=""];
}

