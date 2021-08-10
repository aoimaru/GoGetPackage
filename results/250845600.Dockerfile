[app/sources/250845600.Dockerfile]
digraph {
  "sha256:fee647d1b994ae8b1c2197a7d545594adc3c0f47997b9e044b50dbb5fb3a4ef2" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:f89454f1b10d74b126aaad4748f29c58a3e5bcabbba160345cc16a6443dc7da0" [label="/bin/sh -c apt-get update && apt-get install -y wget make gcc" shape="box"];
  "sha256:37520a85730ce634e6cc0a759e8847dd5d12f767cb8accda117b55301659cbfd" [label="/bin/sh -c wget -qO /redis-3.2.0.tar.gz http://download.redis.io/releases/redis-3.2.0.tar.gz &&     tar -xzf /redis-3.2.0.tar.gz -C /tmp/ && rm /redis-3.2.0.tar.gz" shape="box"];
  "sha256:b1377c3e58e215bb1dcfc99b93abbe298a0dcff91ead0ba146d7ec68805ded08" [label="/bin/sh -c cd /tmp/redis-3.2.0 && make distclean && mkdir -p /redis &&     make install INSTALL_BIN=/redis &&     mv /tmp/redis-3.2.0/redis.conf /redis/redis.conf &&     rm -rf /tmp/redis-3.2.0" shape="box"];
  "sha256:9d0f5f97455168e6a21d34b5bbb59200d88920cb0c7827e193ae9037ce45a4d4" [label="copy{src=/on-start.sh, dest=/}" shape="note"];
  "sha256:5944d72582af47c025117cc133e22ab13a2d8e6c14f23bec803320c35b47897f" [label="/bin/sh -c wget -qO /peer-finder https://storage.googleapis.com/kubernetes-release/pets/peer-finder" shape="box"];
  "sha256:682507be8442c3319d096fd6d128ea42c91821bf40a1f987755c9d2ebff3250f" [label="copy{src=/install.sh, dest=/}" shape="note"];
  "sha256:62cfd4258ce54467d438ce6fbb2e7b45cbb9bc23c8841e2cbb6c817ebabab9d7" [label="/bin/sh -c chmod -c 755 /install.sh /on-start.sh /peer-finder" shape="box"];
  "sha256:e55877c3de1db8e7e00ae7a594a0a0fbed95ec0f2e71a19f7fbf94a4310e5886" [label="sha256:e55877c3de1db8e7e00ae7a594a0a0fbed95ec0f2e71a19f7fbf94a4310e5886" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:f89454f1b10d74b126aaad4748f29c58a3e5bcabbba160345cc16a6443dc7da0" [label=""];
  "sha256:f89454f1b10d74b126aaad4748f29c58a3e5bcabbba160345cc16a6443dc7da0" -> "sha256:37520a85730ce634e6cc0a759e8847dd5d12f767cb8accda117b55301659cbfd" [label=""];
  "sha256:37520a85730ce634e6cc0a759e8847dd5d12f767cb8accda117b55301659cbfd" -> "sha256:b1377c3e58e215bb1dcfc99b93abbe298a0dcff91ead0ba146d7ec68805ded08" [label=""];
  "sha256:b1377c3e58e215bb1dcfc99b93abbe298a0dcff91ead0ba146d7ec68805ded08" -> "sha256:9d0f5f97455168e6a21d34b5bbb59200d88920cb0c7827e193ae9037ce45a4d4" [label=""];
  "sha256:fee647d1b994ae8b1c2197a7d545594adc3c0f47997b9e044b50dbb5fb3a4ef2" -> "sha256:9d0f5f97455168e6a21d34b5bbb59200d88920cb0c7827e193ae9037ce45a4d4" [label=""];
  "sha256:9d0f5f97455168e6a21d34b5bbb59200d88920cb0c7827e193ae9037ce45a4d4" -> "sha256:5944d72582af47c025117cc133e22ab13a2d8e6c14f23bec803320c35b47897f" [label=""];
  "sha256:5944d72582af47c025117cc133e22ab13a2d8e6c14f23bec803320c35b47897f" -> "sha256:682507be8442c3319d096fd6d128ea42c91821bf40a1f987755c9d2ebff3250f" [label=""];
  "sha256:fee647d1b994ae8b1c2197a7d545594adc3c0f47997b9e044b50dbb5fb3a4ef2" -> "sha256:682507be8442c3319d096fd6d128ea42c91821bf40a1f987755c9d2ebff3250f" [label=""];
  "sha256:682507be8442c3319d096fd6d128ea42c91821bf40a1f987755c9d2ebff3250f" -> "sha256:62cfd4258ce54467d438ce6fbb2e7b45cbb9bc23c8841e2cbb6c817ebabab9d7" [label=""];
  "sha256:62cfd4258ce54467d438ce6fbb2e7b45cbb9bc23c8841e2cbb6c817ebabab9d7" -> "sha256:e55877c3de1db8e7e00ae7a594a0a0fbed95ec0f2e71a19f7fbf94a4310e5886" [label=""];
}

