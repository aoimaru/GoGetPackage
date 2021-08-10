[app/sources/345379739.Dockerfile]
digraph {
  "sha256:11b08d6cfd8831e9a755f1c1493e4b98022e15bd948b320c79bbc4880cb7779b" [label="docker-image://docker.io/balenalib/armv7hf-fedora:29-build" shape="ellipse"];
  "sha256:9f58e6959627cc735f5523d4c71f0454545f521ee39733a4bc6bdb6d8bfa6c9a" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:c8f01183c41b1172669efbf4931e6299dd523b81b997100ac2ac605fe4985436" [label="sha256:c8f01183c41b1172669efbf4931e6299dd523b81b997100ac2ac605fe4985436" shape="plaintext"];
  "sha256:11b08d6cfd8831e9a755f1c1493e4b98022e15bd948b320c79bbc4880cb7779b" -> "sha256:9f58e6959627cc735f5523d4c71f0454545f521ee39733a4bc6bdb6d8bfa6c9a" [label=""];
  "sha256:9f58e6959627cc735f5523d4c71f0454545f521ee39733a4bc6bdb6d8bfa6c9a" -> "sha256:c8f01183c41b1172669efbf4931e6299dd523b81b997100ac2ac605fe4985436" [label=""];
}
