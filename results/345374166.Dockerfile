[app/sources/345374166.Dockerfile]
digraph {
  "sha256:b33b0f69113a6985821879da04fcbadc775e30b9ff0364465e93ef1fb83173cc" [label="docker-image://docker.io/balenalib/npe-x500-m3-ubuntu:bionic-run@sha256:2d8f5a1356185d6c55563a60fc145e429e31a34412ce7172f851dea5095b5b2f" shape="ellipse"];
  "sha256:92c1b6e28c7fa87ebf41a5322d849c7d26425fcea11271632a683d69a80eb99c" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:f8d5f6c449d62e66a5fbabb034852136ebf5fe3ba8deafaa83eed0f83eb31084" [label="sha256:f8d5f6c449d62e66a5fbabb034852136ebf5fe3ba8deafaa83eed0f83eb31084" shape="plaintext"];
  "sha256:b33b0f69113a6985821879da04fcbadc775e30b9ff0364465e93ef1fb83173cc" -> "sha256:92c1b6e28c7fa87ebf41a5322d849c7d26425fcea11271632a683d69a80eb99c" [label=""];
  "sha256:92c1b6e28c7fa87ebf41a5322d849c7d26425fcea11271632a683d69a80eb99c" -> "sha256:f8d5f6c449d62e66a5fbabb034852136ebf5fe3ba8deafaa83eed0f83eb31084" [label=""];
}

