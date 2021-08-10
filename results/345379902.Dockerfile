[app/sources/345379902.Dockerfile]
digraph {
  "sha256:339e7fd9cdee3f54aefb54074d3489d405a1d75eea4c3d9477788c0f06159cf2" [label="docker-image://docker.io/balenalib/artik10-fedora:26-run" shape="ellipse"];
  "sha256:76da2a4cbb4e50431e8deca3a7dadbfc25de3c20843bf1d44b5135aeca7e50f2" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& echo \"b94f8935568f746da0cbb89ec97508039c2cad2fc1750ab04150b098614b9241  node-v$NODE_VERSION-linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:d082c58e34cfcc819920ac38a1240b2c566dc7cfc6ec92065f8b560c96f4f5ce" [label="sha256:d082c58e34cfcc819920ac38a1240b2c566dc7cfc6ec92065f8b560c96f4f5ce" shape="plaintext"];
  "sha256:339e7fd9cdee3f54aefb54074d3489d405a1d75eea4c3d9477788c0f06159cf2" -> "sha256:76da2a4cbb4e50431e8deca3a7dadbfc25de3c20843bf1d44b5135aeca7e50f2" [label=""];
  "sha256:76da2a4cbb4e50431e8deca3a7dadbfc25de3c20843bf1d44b5135aeca7e50f2" -> "sha256:d082c58e34cfcc819920ac38a1240b2c566dc7cfc6ec92065f8b560c96f4f5ce" [label=""];
}
