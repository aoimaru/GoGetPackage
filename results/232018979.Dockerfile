[app/sources/232018979.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:f89454f1b10d74b126aaad4748f29c58a3e5bcabbba160345cc16a6443dc7da0" [label="/bin/sh -c apt-get update && apt-get install -y wget make gcc" shape="box"];
  "sha256:37520a85730ce634e6cc0a759e8847dd5d12f767cb8accda117b55301659cbfd" [label="/bin/sh -c wget -qO /redis-3.2.0.tar.gz http://download.redis.io/releases/redis-3.2.0.tar.gz &&     tar -xzf /redis-3.2.0.tar.gz -C /tmp/ && rm /redis-3.2.0.tar.gz" shape="box"];
  "sha256:b1377c3e58e215bb1dcfc99b93abbe298a0dcff91ead0ba146d7ec68805ded08" [label="/bin/sh -c cd /tmp/redis-3.2.0 && make distclean && mkdir -p /redis &&     make install INSTALL_BIN=/redis &&     mv /tmp/redis-3.2.0/redis.conf /redis/redis.conf &&     rm -rf /tmp/redis-3.2.0" shape="box"];
  "sha256:8b177615dc7d3150eec2a6cf9d9dd6659668b8901aba38736d9fcbe23ad49bb3" [label="local://context" shape="ellipse"];
  "sha256:1dca289e893cfdcd9233116a1eb2e0d61de9e555403e8740b4c2dbb371123f1a" [label="copy{src=/on-start.sh, dest=/}" shape="note"];
  "sha256:cafb425e167f8eb6989014d8020ad1f3b4367190c6f89de12031aa1b0b746a58" [label="/bin/sh -c wget -qO /peer-finder https://storage.googleapis.com/kubernetes-release/pets/peer-finder" shape="box"];
  "sha256:99c49ef4c2021fb81505d6ebcaa58e27e806ed080663aea4761800bd9c7c5059" [label="copy{src=/install.sh, dest=/}" shape="note"];
  "sha256:9ca26b1d581ef18c001ea73c5208c571d03d107ace8098a0965054c91da6df83" [label="/bin/sh -c chmod -c 755 /install.sh /on-start.sh /peer-finder" shape="box"];
  "sha256:a397b47fc691af45e814e2064cb45cd2db8889663f7eae80279861b64e0ef715" [label="sha256:a397b47fc691af45e814e2064cb45cd2db8889663f7eae80279861b64e0ef715" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:f89454f1b10d74b126aaad4748f29c58a3e5bcabbba160345cc16a6443dc7da0" [label=""];
  "sha256:f89454f1b10d74b126aaad4748f29c58a3e5bcabbba160345cc16a6443dc7da0" -> "sha256:37520a85730ce634e6cc0a759e8847dd5d12f767cb8accda117b55301659cbfd" [label=""];
  "sha256:37520a85730ce634e6cc0a759e8847dd5d12f767cb8accda117b55301659cbfd" -> "sha256:b1377c3e58e215bb1dcfc99b93abbe298a0dcff91ead0ba146d7ec68805ded08" [label=""];
  "sha256:b1377c3e58e215bb1dcfc99b93abbe298a0dcff91ead0ba146d7ec68805ded08" -> "sha256:1dca289e893cfdcd9233116a1eb2e0d61de9e555403e8740b4c2dbb371123f1a" [label=""];
  "sha256:8b177615dc7d3150eec2a6cf9d9dd6659668b8901aba38736d9fcbe23ad49bb3" -> "sha256:1dca289e893cfdcd9233116a1eb2e0d61de9e555403e8740b4c2dbb371123f1a" [label=""];
  "sha256:1dca289e893cfdcd9233116a1eb2e0d61de9e555403e8740b4c2dbb371123f1a" -> "sha256:cafb425e167f8eb6989014d8020ad1f3b4367190c6f89de12031aa1b0b746a58" [label=""];
  "sha256:cafb425e167f8eb6989014d8020ad1f3b4367190c6f89de12031aa1b0b746a58" -> "sha256:99c49ef4c2021fb81505d6ebcaa58e27e806ed080663aea4761800bd9c7c5059" [label=""];
  "sha256:8b177615dc7d3150eec2a6cf9d9dd6659668b8901aba38736d9fcbe23ad49bb3" -> "sha256:99c49ef4c2021fb81505d6ebcaa58e27e806ed080663aea4761800bd9c7c5059" [label=""];
  "sha256:99c49ef4c2021fb81505d6ebcaa58e27e806ed080663aea4761800bd9c7c5059" -> "sha256:9ca26b1d581ef18c001ea73c5208c571d03d107ace8098a0965054c91da6df83" [label=""];
  "sha256:9ca26b1d581ef18c001ea73c5208c571d03d107ace8098a0965054c91da6df83" -> "sha256:a397b47fc691af45e814e2064cb45cd2db8889663f7eae80279861b64e0ef715" [label=""];
}

