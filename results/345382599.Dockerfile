[app/sources/345382599.Dockerfile]
digraph {
  "sha256:fe86e93f59abbc29aa0a5bf183f3c112c6ad8a3d92409a0c378c939387c96956" [label="docker-image://docker.io/balenalib/imx8m-var-dart-fedora:28-build" shape="ellipse"];
  "sha256:2e0a98d119d53860e9372d86856934c9efe43058912524982fb0d7e29a10dabf" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"78237456386d66ac2143a25530dd5b39326a874079ba7c0676a4639e894567c4  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:13abbc9006d83d7e1b76883f7a41a791151db396b78a81c60b46c8ad09f75700" [label="sha256:13abbc9006d83d7e1b76883f7a41a791151db396b78a81c60b46c8ad09f75700" shape="plaintext"];
  "sha256:fe86e93f59abbc29aa0a5bf183f3c112c6ad8a3d92409a0c378c939387c96956" -> "sha256:2e0a98d119d53860e9372d86856934c9efe43058912524982fb0d7e29a10dabf" [label=""];
  "sha256:2e0a98d119d53860e9372d86856934c9efe43058912524982fb0d7e29a10dabf" -> "sha256:13abbc9006d83d7e1b76883f7a41a791151db396b78a81c60b46c8ad09f75700" [label=""];
}

