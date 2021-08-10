[app/sources/345381925.Dockerfile]
digraph {
  "sha256:d1ca42791b6943d9a7f4dc4d7ea1a36a717f19bd6924147ae2831bbc724dd505" [label="docker-image://docker.io/balenalib/hummingboard-fedora:26-build" shape="ellipse"];
  "sha256:d117f5d3db2887d410267f39de452681f3e56c6b0e7090745b893adaa9276702" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:676f3251d68276a076dc7ba36ddcf81d472fc2e5c20d5725341c7d4bb27e90f2" [label="sha256:676f3251d68276a076dc7ba36ddcf81d472fc2e5c20d5725341c7d4bb27e90f2" shape="plaintext"];
  "sha256:d1ca42791b6943d9a7f4dc4d7ea1a36a717f19bd6924147ae2831bbc724dd505" -> "sha256:d117f5d3db2887d410267f39de452681f3e56c6b0e7090745b893adaa9276702" [label=""];
  "sha256:d117f5d3db2887d410267f39de452681f3e56c6b0e7090745b893adaa9276702" -> "sha256:676f3251d68276a076dc7ba36ddcf81d472fc2e5c20d5725341c7d4bb27e90f2" [label=""];
}
