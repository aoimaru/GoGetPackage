[app/sources/345383672.Dockerfile]
digraph {
  "sha256:d98a6daf08b79c9fd3e16097349f54b7e25f130e5437f0ddd0055c16f776a72b" [label="docker-image://docker.io/balenalib/nitrogen6x-ubuntu:xenial-run" shape="ellipse"];
  "sha256:3b307020e936e4af397ea852d1153b12b499891463effb3ddc5ea4d8cb631340" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:73a8ffdcf3c9cfce96ef845bbf66c9753333f7cf28d43b7db628d525c66ba4f4" [label="sha256:73a8ffdcf3c9cfce96ef845bbf66c9753333f7cf28d43b7db628d525c66ba4f4" shape="plaintext"];
  "sha256:d98a6daf08b79c9fd3e16097349f54b7e25f130e5437f0ddd0055c16f776a72b" -> "sha256:3b307020e936e4af397ea852d1153b12b499891463effb3ddc5ea4d8cb631340" [label=""];
  "sha256:3b307020e936e4af397ea852d1153b12b499891463effb3ddc5ea4d8cb631340" -> "sha256:73a8ffdcf3c9cfce96ef845bbf66c9753333f7cf28d43b7db628d525c66ba4f4" [label=""];
}
