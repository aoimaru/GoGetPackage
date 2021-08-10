[app/sources/345382445.Dockerfile]
digraph {
  "sha256:ad4f23ecc0a81286e5560d6a94f7d4dac9c0b6b1c277521d1be93a2727830cca" [label="docker-image://docker.io/balenalib/imx7-var-som-ubuntu:artful-build" shape="ellipse"];
  "sha256:1499bb4b10f8f65a01dcf6b9c05b1e764578dc5cb05f4efa39243233e533b138" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& echo \"b94f8935568f746da0cbb89ec97508039c2cad2fc1750ab04150b098614b9241  node-v$NODE_VERSION-linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:cbb34a813e3e85e75ffd935293abd03418f6cbe8aad94dc97343afa5ccaded05" [label="sha256:cbb34a813e3e85e75ffd935293abd03418f6cbe8aad94dc97343afa5ccaded05" shape="plaintext"];
  "sha256:ad4f23ecc0a81286e5560d6a94f7d4dac9c0b6b1c277521d1be93a2727830cca" -> "sha256:1499bb4b10f8f65a01dcf6b9c05b1e764578dc5cb05f4efa39243233e533b138" [label=""];
  "sha256:1499bb4b10f8f65a01dcf6b9c05b1e764578dc5cb05f4efa39243233e533b138" -> "sha256:cbb34a813e3e85e75ffd935293abd03418f6cbe8aad94dc97343afa5ccaded05" [label=""];
}

